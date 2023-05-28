std_msgs/String frame_id
std_msgs/Float64 timestamp 
Pose             global_pose 
Point3d          gps_origin 
PoseMap          status_pose_map 
std_msgs/Int32   status 
Indices          valid_indices 
Objects          objects 

std_msgs/Bool  has_pointcloud 
Point4f[]      scan_pointcloud 

std_msgs/Bool  has_attention_objects 
Objects        attention_objects 

std_msgs/Bool  has_freespace 
FreeSpaceInfos freespace_infos 

std_msgs/Bool   has_lanes 
Lanes           lanes 

std_msgs/Bool   has_roadedges 
RoadEdges       roadedges 

std_msgs/Bool   has_sematice_indices 
Indices         non_ground_indices
Indices         ground_indices 
Indices         background_indices 
