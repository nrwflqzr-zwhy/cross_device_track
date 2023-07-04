#!/usr/bin/env python3

import rospy
import numpy as np
import copy
import math
import sys
path = "/home/zwhy/workspace/cross_device_track"
# 核心
sys.path.insert(0, path + "/src/cross_device_tracking/scripts")
from AB3DMOT_libs.matching import data_association
from AB3DMOT_libs.box import Box3D
from AB3DMOT_libs.kalman_filter import *
from jsk_recognition_msgs.msg import BoundingBox, BoundingBoxArray
from visualization_msgs.msg import Marker,MarkerArray
from all_msgs.msg import Objects
from all_msgs.msg import RsPerceptionMsg
from scipy.spatial.transform import Rotation as R

TRACKING_NAMES = ['people', 'cyclist', 'car', 'bus', 'truck']

CLS_VELOCITY_ERROR = {
    'people': 3,
    'cyclist': 3,
    'car': 9,
    'bus': 5.5,
    'truck': 4
}

# A Baseline of 3D Multi-Object Tracking
class AB3DMOT():			  	
	def __init__(self, ID_init = 1, sub_topic='/fusion_detection', sub_type=RsPerceptionMsg, pub_topic='/track_result', pub_type=RsPerceptionMsg):                    

		self.sub_topic = sub_topic; self.sub_type = sub_type
		self.pub_topic = pub_topic; self.pub_type = pub_type
		self.metric = 'm_dis'
		self.thres = 0.2
		self.algm = 'hungar'
		self.min_hits = 3
		self.max_age = 2
		self.max_sim = 0.0
		self.min_sim = -100.
		self.ID_start=1 
		self.trackers = []
		self.frame_count = 0
		self.ID_count = [ID_init]
		self.id_now_output = []
		self.num_2_label = {
            0: "",
            1: "people",
            2: "cyclist",
            3: "car",
            4: "bus",
            5: "truck",
            6: "unknow"
        }


	'''
	description: 订阅与发布
	param {*} self
	return {*}
	'''	
	def run(self):
		self.subscriber = rospy.Subscriber(self.sub_topic, self.sub_type, self.callback)
		self.publisher = rospy.Publisher(self.pub_topic, self.pub_type, queue_size=20)
		self.bbox_publish = rospy.Publisher("tracking_bboxes", BoundingBoxArray, queue_size=10)
		self.marker_pub = rospy.Publisher( 'visualization_marker_array', MarkerArray, queue_size=100)	
	'''
	description: ros回调函数,接收检测结果
	param {*} self
	param {*} msg_data
	return {*}
	'''	
	def callback(self, msg_data):
		# 获取所有的检测物体
		obj_list = msg_data.lidarframe.objects.objects
		# 组织AB3DMOT需要的结构 [h,w,l,x,y,z,o] + [label,score]
		dets = []
		scores = []
		labels = []
		for obj in obj_list:
			# 计算朝向角
			dx = obj.coreinfo.direction.x.data; dy = obj.coreinfo.direction.y.data
			orientation = math.atan2(dy, dx)
			# det
			det = [obj.coreinfo.size.z.data, obj.coreinfo.size.y.data, obj.coreinfo.size.x.data, \
	  			   obj.coreinfo.center.x.data, obj.coreinfo.center.y.data, obj.coreinfo.center.z.data, orientation]
			dets.append(det)
			# score
			scores.append(obj.coreinfo.exist_confidence.data)
			# label
			labels.append(self.num_2_label.get(obj.coreinfo.type.data))

		info_data=[]
		dic_dets={}

		info_data = np.stack((labels, scores), axis=1)	
		dic_dets={'dets': dets, 'info': info_data}
		
		# ******************************************* 开始追踪 ****************************************************
		start=rospy.Time.now().to_sec()
		cat_res, _=self.track(dic_dets)		

		self.ID_start=max(self.ID_start, self.ID_count[0]) ##global counter
		trk_result=cat_res[0]
		#print("*******", trk_result)
		end=rospy.Time.now().to_sec()
		print("time for tracking",(end-start))

		#track detections - now we are considering Car class model for all classes - ToDo : add cyclist and pedestrian categories
		# h,w,l,x,y,z,theta, ID, other info, confidence

		bbox_array=BoundingBoxArray()
		idx = 0
		self.markerArray = MarkerArray()
		#for trk in trk_result: print(trk[9])
		#print("------------------------")
		for i, trk in enumerate(trk_result):
			if np.size(trk) == 0:
				continue
			if float(trk[9])>0.5:
				q = yaw_to_quaternion(float(trk[6]))
				bbox = BoundingBox()
				marker = Marker()
				# h,w,l,x,y,z,theta, ID, other info, confidence
				marker.header.stamp = rospy.Time.from_sec(msg_data.lidarframe.timestamp.data);
				marker.header.frame_id = msg_data.lidarframe.frame_id.data
				marker.type = marker.TEXT_VIEW_FACING
				marker.id = int(trk[7])
				# print("trk[7] = {0}".format(trk[7]), end= ' ')
				# print("trk[8] = {0}".format(trk[8]))
				marker.text = f"{int(trk[7])} {trk[8]}"
				marker.action = marker.ADD
				marker.frame_locked = True
				marker.lifetime = rospy.Duration(0.1)
				marker.scale.x, marker.scale.y,marker.scale.z = 0.8, 0.8, 0.8
				marker.color.r, marker.color.g, marker.color.b, marker.color.a = 1.0, 1.0, 1.0, 1.0
				print("**********")
				print(trk[0])
				print(trk[1])
				print(trk[2])
				print(trk[3])
				print(trk[4])
				print(trk[5])
				print(trk[6])
				print(trk[7])
				print(trk[8])
				print(trk[9])

				marker.pose.position.x, marker.pose.position.y, marker.pose.position.z = float(trk[3]), float(trk[4]), float(trk[5])

				bbox.header.stamp = rospy.Time.from_sec(msg_data.lidarframe.timestamp.data);
				bbox.header.frame_id = msg_data.lidarframe.frame_id.data
				#bbox.header.stamp = lidarMsg.header.stamp
				#bbox.header.frame_id = lidarMsg.header.frame_id
				bbox.pose.position.x, bbox.pose.position.y, bbox.pose.position.z = float(trk[3]), float(trk[4]), float(trk[5])
				bbox.pose.orientation.w, bbox.pose.orientation.x, bbox.pose.orientation.y, bbox.pose.orientation.z = q[3], q[0], q[1], q[2]

				bbox.dimensions.x, bbox.dimensions.y, bbox.dimensions.z = float(trk[2]), float(trk[1]), float(trk[0])
				bbox.value = float(trk[9])
				bbox.label = self.find_key_by_value(self.num_2_label, trk[8])
				bbox_array.header = bbox.header
				bbox_array.boxes.append(bbox)
				self.markerArray.markers.append(marker)
		
		#bbox_array.header.frame_id = lidarMsg.header.frame_id
		#print("len of bbox array from tracking", len(bbox_array.boxes))
		#print(bbox_array.boxes)
		if len(bbox_array.boxes) != 0:
			self.bbox_publish.publish(bbox_array)
			self.marker_pub.publish(self.markerArray)
			bbox_array.boxes = []

		else:
			bbox_array.boxes = []
			self.bbox_publish.publish(bbox_array)
			#self.marker_pub.publish(self.markerArray)

	def find_key_by_value(self, d, value):
		for k, v in d.items():
			if v == value:
				return k
		
		return None



	def process_dets(self, dets, info):
	
		dets_new = []
		# 将dets包装成Box3D对象
		for i, det in enumerate(dets):
			det_tmp = Box3D.array2bbox_raw(det, info[i,:])
			dets_new.append(det_tmp)
		#dets_new = [Box3D.array2bbox_raw(det,info) for det in dets]	
		return dets_new

	def within_range(self, theta):

		if theta >= np.pi: theta -= np.pi * 2    
		if theta < -np.pi: theta += np.pi * 2

		return theta

	def orientation_correction(self, theta_pre, theta_obs):

		theta_pre = self.within_range(theta_pre)
		theta_obs = self.within_range(theta_obs)

		if abs(theta_obs - theta_pre) > np.pi / 2.0 and abs(theta_obs - theta_pre) < np.pi * 3 / 2.0:     
			theta_pre += np.pi       
			theta_pre = self.within_range(theta_pre)

		if abs(theta_obs - theta_pre) >= np.pi * 3 / 2.0:
			if theta_obs > 0: theta_pre += np.pi * 2
			else: theta_pre -= np.pi * 2

		return theta_pre, theta_obs

	'''
	description: 自我运动补偿
	param {*} self
	param {*} frame
	param {*} trks
	return {*}
	''' 
	def ego_motion_compensation(self, frame, trks):
		
		assert len(self.trackers) == len(trks), 'error'
		print("get ego trajectory", get_ego_traj(self.oxts, frame, 1, 1, only_fut=True, inverse=True))
		if get_ego_traj(self.oxts, frame, 1, 1, only_fut=True, inverse=True) !=None:
			print("ego trajectory is compensated - step 2")
			ego_xyz_imu, ego_rot_imu, left, right = get_ego_traj(self.oxts, frame, 1, 1, only_fut=True, inverse=True) 
			for index in range(len(self.trackers)):
				trk_tmp = trks[index]
				xyz = np.array([trk_tmp.x, trk_tmp.y, trk_tmp.z]).reshape((1, -1))
				compensated = egomotion_compensation_ID(xyz, self.calib, ego_rot_imu, ego_xyz_imu, left, right)
				trk_tmp.x, trk_tmp.y, trk_tmp.z = compensated[0]

		return trks

	
	def prediction(self):

		trks = []
		for t in range(len(self.trackers)):
			
			# propagate locations
			kf_tmp = self.trackers[t]
			kf_tmp.kf.predict()
			# 结果约束到 [-2pi,+2pi]
			kf_tmp.kf.x[3] = self.within_range(kf_tmp.kf.x[3])
			# update statistics
			kf_tmp.time_since_update += 1 		
			trk_tmp = kf_tmp.kf.x.reshape((-1))[:7]   # 
			trks.append(Box3D.array2bbox(trk_tmp))

		return trks

	def update(self, matched, unmatched_trks, dets, info):
		# update matched trackers with assigned detections
		
		dets = copy.copy(dets)
		for t, trk in enumerate(self.trackers):
			if t not in unmatched_trks:
				d = matched[np.where(matched[:, 1] == t)[0], 0]     # a list of index
				assert len(d) == 1, 'error'

				# update statistics
				trk.time_since_update = 0		# reset because just updated
				trk.hits += 1

				# update orientation in propagated tracks and detected boxes so that they are within 90 degree
				bbox3d = Box3D.bbox2array(dets[d[0]])
				trk.kf.x[3], bbox3d[3] = self.orientation_correction(trk.kf.x[3], bbox3d[3])
				# kalman filter update with observation
				trk.kf.update(bbox3d)
				trk.kf.x[3] = self.within_range(trk.kf.x[3])
				trk.info = info[d, :][0]


	def birth(self, dets, info, unmatched_dets):

		new_id_list = list()					# new ID generated for unmatched detections
		for i in unmatched_dets:        			# a scalar of index
			trk = KF(Box3D.bbox2array(dets[i]), info[i, :], self.ID_count[0])
			self.trackers.append(trk)
			new_id_list.append(trk.id)
			self.ID_count[0] += 1

		return new_id_list

	def output(self):

		num_trks = len(self.trackers)
		results = []
		for trk in reversed(self.trackers):
			# change format from [x,y,z,theta,l,w,h] to [h,w,l,x,y,z,theta]
			d = Box3D.array2bbox(trk.kf.x[:7].reshape((7, )))     # bbox location self
			d = Box3D.bbox2array_raw(d)

			if ((trk.time_since_update < self.max_age) and (trk.hits >= self.min_hits or self.frame_count <= self.min_hits)):      
				results.append(np.concatenate((d, [trk.id], trk.info)).reshape(1, -1)) 		
			num_trks -= 1

			# deadth, remove dead tracklet
			if (trk.time_since_update >= self.max_age): 
				self.trackers.pop(num_trks)

		return results

	def process_affi(self, affi, matched, unmatched_dets, new_id_list):

		trk_id = self.id_past 			# ID in the trks for matching

		det_id = [-1 for _ in range(affi.shape[0])]		# initialization
		for match_tmp in matched:		
			det_id[match_tmp[0]] = trk_id[match_tmp[1]]

		count = 0
		assert len(unmatched_dets) == len(new_id_list), 'error'
		for unmatch_tmp in unmatched_dets:
			det_id[unmatch_tmp] = new_id_list[count] 	# new_id_list is in the same order as unmatched_dets
			count += 1
		assert not (-1 in det_id), 'error, still have invalid ID in the detection list'
		affi = affi.transpose() 			

		permute_row = list()
		'''for output_id_tmp in self.id_past_output:
			index = trk_id.index(output_id_tmp)
			permute_row.append(index)'''
		permute_row = [trk_id.index(output_id_tmp) for output_id_tmp in self.id_past_output]
		affi = affi[permute_row, :]	
		assert affi.shape[0] == len(self.id_past_output), 'error'

		max_index = affi.shape[1]
		permute_col = list()
		to_fill_col, to_fill_id = list(), list() 		# append new columns at the end, also remember the ID for the added ones
		for output_id_tmp in self.id_now_output:
			try:
				index = det_id.index(output_id_tmp)
			except:		# some output ID does not exist in the detections but rather predicted by KF
				index = max_index
				max_index += 1
				to_fill_col.append(index); to_fill_id.append(output_id_tmp)
			permute_col.append(index)

		# expand the affinity matrix with newly added columns
		append = np.zeros((affi.shape[0], max_index - affi.shape[1]))
		append.fill(self.min_sim)
		affi = np.concatenate([affi, append], axis=1)

		# find out the correct permutation for the newly added columns of ID
		for count in range(len(to_fill_col)):
			fill_col = to_fill_col[count]
			fill_id = to_fill_id[count]
			row_index = self.id_past_output.index(fill_id)

			# construct one hot vector because it is proapgated from previous tracks, so 100% matching
			affi[row_index, fill_col] = self.max_sim		
		affi = affi[:, permute_col]

		return affi

	def track(self, dets_all):

		dets, info = dets_all['dets'], dets_all['info']         # dets: N x 7, float numpy array

		self.frame_count += 1

		# recall the last frames of outputs for computing ID correspondences during affinity processing
		self.id_past_output = copy.copy(self.id_now_output)
		self.id_past = [trk.id for trk in self.trackers]

		# process detection format
		dets = self.process_dets(dets, info)
		#print(dets[0].cls,"dets with classes")

		# tracks propagation based on velocity
		trks = self.prediction()
		#print("trks after prediction: ", trks)
		# ego motion compensation, adapt to the current frame of camera coordinate
		# if (self.frame_count > 0) and (self.ego_com) and (self.oxts is not None):
		# 	print("step 1 ::: ")
		# 	trks = self.ego_motion_compensation(self.frame_count, trks)

		# matching
		trk_innovation_matrix = None
		if self.metric == 'm_dis':
			trk_innovation_matrix = [trk.compute_innovation_matrix() for trk in self.trackers] 
		matched, unmatched_dets, unmatched_trks, cost, affi = \
			data_association(dets, trks, self.metric, self.thres, self.algm, trk_innovation_matrix)
		
		'''print("matched : ", matched)
		print("unmatched_dets : ", unmatched_dets)
		print("unmatched_trks : ", unmatched_trks)'''
		
		self.update(matched, unmatched_trks, dets, info)
		new_id_list = self.birth(dets, info, unmatched_dets)

		results = self.output()
		if len(results) > 0: results = [np.concatenate(results)]		# h,w,l,x,y,z,theta, ID, other info, confidence
		else:            	 results = [np.empty((0, 10))]
		self.id_now_output = results[0][:, 7].tolist()				# only the active tracks that are outputed
		# if self.affi_process:
		# 	affi = self.process_affi(affi, matched, unmatched_dets, new_id_list)

		return results, affi

def euler_from_quaternion(x, y, z, w):

	t0 = +2.0 * (w * x + y * z)
	t1 = +1.0 - 2.0 * (x * x + y * y)
	roll_x = math.atan2(t0, t1)

	t2 = +2.0 * (w * y - z * x)
	t2 = +1.0 if t2 > +1.0 else t2
	t2 = -1.0 if t2 < -1.0 else t2
	pitch_y = math.asin(t2)

	t3 = +2.0 * (w * z + x * y)
	t4 = +1.0 - 2.0 * (y * y + z * z)
	yaw_z = math.atan2(t3, t4)
	return roll_x, pitch_y, yaw_z # in radians 


def yaw_to_quaternion(yaw):
    r = R.from_euler('z', yaw, degrees=False)
    return r.as_quat()


if __name__ == '__main__':
	rospy.init_node("trackingNode")
	ID_start = 1
	ab3dmot = AB3DMOT(ID_init=ID_start, sub_topic='/fusion_detection', pub_topic='track_result')
	ab3dmot.run()
	rospy.spin()
