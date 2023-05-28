;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::CoreInfo)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'CoreInfo (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::COREINFO")
  (make-package "ALL_MSGS::COREINFO"))

(in-package "ROS")
;;//! \htmlinclude CoreInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::CoreInfo
  :super ros::object
  :slots (_timestamp _priority_id _exist_confidence _center _center_cov _size _size_cov _direction _direction_cov _type _type_confidence _attention_type _motion_state _lane_pos _trakcer_id _age _velocity _velocity_cov _acceleration _acceleration_cov _angle_velocity _angle_velocity_cov _angle_acceleration _angle_acceleration_cov _anchor _nearest_point ))

(defmethod all_msgs::CoreInfo
  (:init
   (&key
    ((:timestamp __timestamp) (instance std_msgs::Float64 :init))
    ((:priority_id __priority_id) (instance std_msgs::Int32 :init))
    ((:exist_confidence __exist_confidence) (instance std_msgs::Float32 :init))
    ((:center __center) (instance all_msgs::Point3f :init))
    ((:center_cov __center_cov) (instance all_msgs::Point3f :init))
    ((:size __size) (instance all_msgs::Point3f :init))
    ((:size_cov __size_cov) (instance all_msgs::Point3f :init))
    ((:direction __direction) (instance all_msgs::Point3f :init))
    ((:direction_cov __direction_cov) (instance all_msgs::Point3f :init))
    ((:type __type) (instance std_msgs::Int32 :init))
    ((:type_confidence __type_confidence) (instance std_msgs::Float32 :init))
    ((:attention_type __attention_type) (instance std_msgs::Int32 :init))
    ((:motion_state __motion_state) (instance std_msgs::Int32 :init))
    ((:lane_pos __lane_pos) (instance std_msgs::Int32 :init))
    ((:trakcer_id __trakcer_id) (instance std_msgs::Int32 :init))
    ((:age __age) (instance std_msgs::Float64 :init))
    ((:velocity __velocity) (instance all_msgs::Point3f :init))
    ((:velocity_cov __velocity_cov) (instance all_msgs::Point3f :init))
    ((:acceleration __acceleration) (instance all_msgs::Point3f :init))
    ((:acceleration_cov __acceleration_cov) (instance all_msgs::Point3f :init))
    ((:angle_velocity __angle_velocity) (instance std_msgs::Float32 :init))
    ((:angle_velocity_cov __angle_velocity_cov) (instance std_msgs::Float32 :init))
    ((:angle_acceleration __angle_acceleration) (instance std_msgs::Float32 :init))
    ((:angle_acceleration_cov __angle_acceleration_cov) (instance std_msgs::Float32 :init))
    ((:anchor __anchor) (instance all_msgs::Point3f :init))
    ((:nearest_point __nearest_point) (instance all_msgs::Point3f :init))
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _priority_id __priority_id)
   (setq _exist_confidence __exist_confidence)
   (setq _center __center)
   (setq _center_cov __center_cov)
   (setq _size __size)
   (setq _size_cov __size_cov)
   (setq _direction __direction)
   (setq _direction_cov __direction_cov)
   (setq _type __type)
   (setq _type_confidence __type_confidence)
   (setq _attention_type __attention_type)
   (setq _motion_state __motion_state)
   (setq _lane_pos __lane_pos)
   (setq _trakcer_id __trakcer_id)
   (setq _age __age)
   (setq _velocity __velocity)
   (setq _velocity_cov __velocity_cov)
   (setq _acceleration __acceleration)
   (setq _acceleration_cov __acceleration_cov)
   (setq _angle_velocity __angle_velocity)
   (setq _angle_velocity_cov __angle_velocity_cov)
   (setq _angle_acceleration __angle_acceleration)
   (setq _angle_acceleration_cov __angle_acceleration_cov)
   (setq _anchor __anchor)
   (setq _nearest_point __nearest_point)
   self)
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:priority_id
   (&rest __priority_id)
   (if (keywordp (car __priority_id))
       (send* _priority_id __priority_id)
     (progn
       (if __priority_id (setq _priority_id (car __priority_id)))
       _priority_id)))
  (:exist_confidence
   (&rest __exist_confidence)
   (if (keywordp (car __exist_confidence))
       (send* _exist_confidence __exist_confidence)
     (progn
       (if __exist_confidence (setq _exist_confidence (car __exist_confidence)))
       _exist_confidence)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:center_cov
   (&rest __center_cov)
   (if (keywordp (car __center_cov))
       (send* _center_cov __center_cov)
     (progn
       (if __center_cov (setq _center_cov (car __center_cov)))
       _center_cov)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:size_cov
   (&rest __size_cov)
   (if (keywordp (car __size_cov))
       (send* _size_cov __size_cov)
     (progn
       (if __size_cov (setq _size_cov (car __size_cov)))
       _size_cov)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:direction_cov
   (&rest __direction_cov)
   (if (keywordp (car __direction_cov))
       (send* _direction_cov __direction_cov)
     (progn
       (if __direction_cov (setq _direction_cov (car __direction_cov)))
       _direction_cov)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:type_confidence
   (&rest __type_confidence)
   (if (keywordp (car __type_confidence))
       (send* _type_confidence __type_confidence)
     (progn
       (if __type_confidence (setq _type_confidence (car __type_confidence)))
       _type_confidence)))
  (:attention_type
   (&rest __attention_type)
   (if (keywordp (car __attention_type))
       (send* _attention_type __attention_type)
     (progn
       (if __attention_type (setq _attention_type (car __attention_type)))
       _attention_type)))
  (:motion_state
   (&rest __motion_state)
   (if (keywordp (car __motion_state))
       (send* _motion_state __motion_state)
     (progn
       (if __motion_state (setq _motion_state (car __motion_state)))
       _motion_state)))
  (:lane_pos
   (&rest __lane_pos)
   (if (keywordp (car __lane_pos))
       (send* _lane_pos __lane_pos)
     (progn
       (if __lane_pos (setq _lane_pos (car __lane_pos)))
       _lane_pos)))
  (:trakcer_id
   (&rest __trakcer_id)
   (if (keywordp (car __trakcer_id))
       (send* _trakcer_id __trakcer_id)
     (progn
       (if __trakcer_id (setq _trakcer_id (car __trakcer_id)))
       _trakcer_id)))
  (:age
   (&rest __age)
   (if (keywordp (car __age))
       (send* _age __age)
     (progn
       (if __age (setq _age (car __age)))
       _age)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_cov
   (&rest __velocity_cov)
   (if (keywordp (car __velocity_cov))
       (send* _velocity_cov __velocity_cov)
     (progn
       (if __velocity_cov (setq _velocity_cov (car __velocity_cov)))
       _velocity_cov)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:acceleration_cov
   (&rest __acceleration_cov)
   (if (keywordp (car __acceleration_cov))
       (send* _acceleration_cov __acceleration_cov)
     (progn
       (if __acceleration_cov (setq _acceleration_cov (car __acceleration_cov)))
       _acceleration_cov)))
  (:angle_velocity
   (&rest __angle_velocity)
   (if (keywordp (car __angle_velocity))
       (send* _angle_velocity __angle_velocity)
     (progn
       (if __angle_velocity (setq _angle_velocity (car __angle_velocity)))
       _angle_velocity)))
  (:angle_velocity_cov
   (&rest __angle_velocity_cov)
   (if (keywordp (car __angle_velocity_cov))
       (send* _angle_velocity_cov __angle_velocity_cov)
     (progn
       (if __angle_velocity_cov (setq _angle_velocity_cov (car __angle_velocity_cov)))
       _angle_velocity_cov)))
  (:angle_acceleration
   (&rest __angle_acceleration)
   (if (keywordp (car __angle_acceleration))
       (send* _angle_acceleration __angle_acceleration)
     (progn
       (if __angle_acceleration (setq _angle_acceleration (car __angle_acceleration)))
       _angle_acceleration)))
  (:angle_acceleration_cov
   (&rest __angle_acceleration_cov)
   (if (keywordp (car __angle_acceleration_cov))
       (send* _angle_acceleration_cov __angle_acceleration_cov)
     (progn
       (if __angle_acceleration_cov (setq _angle_acceleration_cov (car __angle_acceleration_cov)))
       _angle_acceleration_cov)))
  (:anchor
   (&rest __anchor)
   (if (keywordp (car __anchor))
       (send* _anchor __anchor)
     (progn
       (if __anchor (setq _anchor (car __anchor)))
       _anchor)))
  (:nearest_point
   (&rest __nearest_point)
   (if (keywordp (car __nearest_point))
       (send* _nearest_point __nearest_point)
     (progn
       (if __nearest_point (setq _nearest_point (car __nearest_point)))
       _nearest_point)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _timestamp
    (send _timestamp :serialization-length)
    ;; std_msgs/Int32 _priority_id
    (send _priority_id :serialization-length)
    ;; std_msgs/Float32 _exist_confidence
    (send _exist_confidence :serialization-length)
    ;; all_msgs/Point3f _center
    (send _center :serialization-length)
    ;; all_msgs/Point3f _center_cov
    (send _center_cov :serialization-length)
    ;; all_msgs/Point3f _size
    (send _size :serialization-length)
    ;; all_msgs/Point3f _size_cov
    (send _size_cov :serialization-length)
    ;; all_msgs/Point3f _direction
    (send _direction :serialization-length)
    ;; all_msgs/Point3f _direction_cov
    (send _direction_cov :serialization-length)
    ;; std_msgs/Int32 _type
    (send _type :serialization-length)
    ;; std_msgs/Float32 _type_confidence
    (send _type_confidence :serialization-length)
    ;; std_msgs/Int32 _attention_type
    (send _attention_type :serialization-length)
    ;; std_msgs/Int32 _motion_state
    (send _motion_state :serialization-length)
    ;; std_msgs/Int32 _lane_pos
    (send _lane_pos :serialization-length)
    ;; std_msgs/Int32 _trakcer_id
    (send _trakcer_id :serialization-length)
    ;; std_msgs/Float64 _age
    (send _age :serialization-length)
    ;; all_msgs/Point3f _velocity
    (send _velocity :serialization-length)
    ;; all_msgs/Point3f _velocity_cov
    (send _velocity_cov :serialization-length)
    ;; all_msgs/Point3f _acceleration
    (send _acceleration :serialization-length)
    ;; all_msgs/Point3f _acceleration_cov
    (send _acceleration_cov :serialization-length)
    ;; std_msgs/Float32 _angle_velocity
    (send _angle_velocity :serialization-length)
    ;; std_msgs/Float32 _angle_velocity_cov
    (send _angle_velocity_cov :serialization-length)
    ;; std_msgs/Float32 _angle_acceleration
    (send _angle_acceleration :serialization-length)
    ;; std_msgs/Float32 _angle_acceleration_cov
    (send _angle_acceleration_cov :serialization-length)
    ;; all_msgs/Point3f _anchor
    (send _anchor :serialization-length)
    ;; all_msgs/Point3f _nearest_point
    (send _nearest_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _timestamp
       (send _timestamp :serialize s)
     ;; std_msgs/Int32 _priority_id
       (send _priority_id :serialize s)
     ;; std_msgs/Float32 _exist_confidence
       (send _exist_confidence :serialize s)
     ;; all_msgs/Point3f _center
       (send _center :serialize s)
     ;; all_msgs/Point3f _center_cov
       (send _center_cov :serialize s)
     ;; all_msgs/Point3f _size
       (send _size :serialize s)
     ;; all_msgs/Point3f _size_cov
       (send _size_cov :serialize s)
     ;; all_msgs/Point3f _direction
       (send _direction :serialize s)
     ;; all_msgs/Point3f _direction_cov
       (send _direction_cov :serialize s)
     ;; std_msgs/Int32 _type
       (send _type :serialize s)
     ;; std_msgs/Float32 _type_confidence
       (send _type_confidence :serialize s)
     ;; std_msgs/Int32 _attention_type
       (send _attention_type :serialize s)
     ;; std_msgs/Int32 _motion_state
       (send _motion_state :serialize s)
     ;; std_msgs/Int32 _lane_pos
       (send _lane_pos :serialize s)
     ;; std_msgs/Int32 _trakcer_id
       (send _trakcer_id :serialize s)
     ;; std_msgs/Float64 _age
       (send _age :serialize s)
     ;; all_msgs/Point3f _velocity
       (send _velocity :serialize s)
     ;; all_msgs/Point3f _velocity_cov
       (send _velocity_cov :serialize s)
     ;; all_msgs/Point3f _acceleration
       (send _acceleration :serialize s)
     ;; all_msgs/Point3f _acceleration_cov
       (send _acceleration_cov :serialize s)
     ;; std_msgs/Float32 _angle_velocity
       (send _angle_velocity :serialize s)
     ;; std_msgs/Float32 _angle_velocity_cov
       (send _angle_velocity_cov :serialize s)
     ;; std_msgs/Float32 _angle_acceleration
       (send _angle_acceleration :serialize s)
     ;; std_msgs/Float32 _angle_acceleration_cov
       (send _angle_acceleration_cov :serialize s)
     ;; all_msgs/Point3f _anchor
       (send _anchor :serialize s)
     ;; all_msgs/Point3f _nearest_point
       (send _nearest_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; std_msgs/Int32 _priority_id
     (send _priority_id :deserialize buf ptr-) (incf ptr- (send _priority_id :serialization-length))
   ;; std_msgs/Float32 _exist_confidence
     (send _exist_confidence :deserialize buf ptr-) (incf ptr- (send _exist_confidence :serialization-length))
   ;; all_msgs/Point3f _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; all_msgs/Point3f _center_cov
     (send _center_cov :deserialize buf ptr-) (incf ptr- (send _center_cov :serialization-length))
   ;; all_msgs/Point3f _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; all_msgs/Point3f _size_cov
     (send _size_cov :deserialize buf ptr-) (incf ptr- (send _size_cov :serialization-length))
   ;; all_msgs/Point3f _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; all_msgs/Point3f _direction_cov
     (send _direction_cov :deserialize buf ptr-) (incf ptr- (send _direction_cov :serialization-length))
   ;; std_msgs/Int32 _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/Float32 _type_confidence
     (send _type_confidence :deserialize buf ptr-) (incf ptr- (send _type_confidence :serialization-length))
   ;; std_msgs/Int32 _attention_type
     (send _attention_type :deserialize buf ptr-) (incf ptr- (send _attention_type :serialization-length))
   ;; std_msgs/Int32 _motion_state
     (send _motion_state :deserialize buf ptr-) (incf ptr- (send _motion_state :serialization-length))
   ;; std_msgs/Int32 _lane_pos
     (send _lane_pos :deserialize buf ptr-) (incf ptr- (send _lane_pos :serialization-length))
   ;; std_msgs/Int32 _trakcer_id
     (send _trakcer_id :deserialize buf ptr-) (incf ptr- (send _trakcer_id :serialization-length))
   ;; std_msgs/Float64 _age
     (send _age :deserialize buf ptr-) (incf ptr- (send _age :serialization-length))
   ;; all_msgs/Point3f _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; all_msgs/Point3f _velocity_cov
     (send _velocity_cov :deserialize buf ptr-) (incf ptr- (send _velocity_cov :serialization-length))
   ;; all_msgs/Point3f _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; all_msgs/Point3f _acceleration_cov
     (send _acceleration_cov :deserialize buf ptr-) (incf ptr- (send _acceleration_cov :serialization-length))
   ;; std_msgs/Float32 _angle_velocity
     (send _angle_velocity :deserialize buf ptr-) (incf ptr- (send _angle_velocity :serialization-length))
   ;; std_msgs/Float32 _angle_velocity_cov
     (send _angle_velocity_cov :deserialize buf ptr-) (incf ptr- (send _angle_velocity_cov :serialization-length))
   ;; std_msgs/Float32 _angle_acceleration
     (send _angle_acceleration :deserialize buf ptr-) (incf ptr- (send _angle_acceleration :serialization-length))
   ;; std_msgs/Float32 _angle_acceleration_cov
     (send _angle_acceleration_cov :deserialize buf ptr-) (incf ptr- (send _angle_acceleration_cov :serialization-length))
   ;; all_msgs/Point3f _anchor
     (send _anchor :deserialize buf ptr-) (incf ptr- (send _anchor :serialization-length))
   ;; all_msgs/Point3f _nearest_point
     (send _nearest_point :deserialize buf ptr-) (incf ptr- (send _nearest_point :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::CoreInfo :md5sum-) "7f0ff990bf278ab87b544233b3a79e70")
(setf (get all_msgs::CoreInfo :datatype-) "all_msgs/CoreInfo")
(setf (get all_msgs::CoreInfo :definition-)
      "std_msgs/Float64 timestamp

std_msgs/Int32 priority_id
std_msgs/Float32 exist_confidence 
Point3f          center 
Point3f          center_cov 
Point3f          size 
Point3f          size_cov 
Point3f          direction 
Point3f          direction_cov         
std_msgs/Int32   type 
std_msgs/Float32 type_confidence 
std_msgs/Int32   attention_type 
std_msgs/Int32   motion_state
std_msgs/Int32   lane_pos
std_msgs/Int32   trakcer_id 
std_msgs/Float64 age 
Point3f          velocity 
Point3f          velocity_cov 
Point3f          acceleration 
Point3f          acceleration_cov 
std_msgs/Float32 angle_velocity 
std_msgs/Float32 angle_velocity_cov 
std_msgs/Float32 angle_acceleration 
std_msgs/Float32 angle_acceleration_cov  
Point3f          anchor 
Point3f          nearest_point 


================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: all_msgs/Point3f
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
")



(provide :all_msgs/CoreInfo "7f0ff990bf278ab87b544233b3a79e70")


