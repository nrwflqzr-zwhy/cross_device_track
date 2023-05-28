;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::SupplementInfo)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'SupplementInfo (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::SUPPLEMENTINFO")
  (make-package "ALL_MSGS::SUPPLEMENTINFO"))

(in-package "ROS")
;;//! \htmlinclude SupplementInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::SupplementInfo
  :super ros::object
  :slots (_unique_id _polygon _left_point_index _right_point_index _cloud_indices _latent_types _size_type _mode _in_roi _tracking_state _geo_center _geo_size _trajectory _history_velocity _history_type _gps_mode _gps_info ))

(defmethod all_msgs::SupplementInfo
  (:init
   (&key
    ((:unique_id __unique_id) (instance std_msgs::UInt32 :init))
    ((:polygon __polygon) ())
    ((:left_point_index __left_point_index) (instance std_msgs::Int32 :init))
    ((:right_point_index __right_point_index) (instance std_msgs::Int32 :init))
    ((:cloud_indices __cloud_indices) ())
    ((:latent_types __latent_types) ())
    ((:size_type __size_type) (instance std_msgs::Int32 :init))
    ((:mode __mode) (instance std_msgs::Int32 :init))
    ((:in_roi __in_roi) (instance std_msgs::Bool :init))
    ((:tracking_state __tracking_state) (instance std_msgs::Int32 :init))
    ((:geo_center __geo_center) (instance all_msgs::Point3f :init))
    ((:geo_size __geo_size) (instance all_msgs::Point3f :init))
    ((:trajectory __trajectory) ())
    ((:history_velocity __history_velocity) ())
    ((:history_type __history_type) ())
    ((:gps_mode __gps_mode) (instance std_msgs::Int32 :init))
    ((:gps_info __gps_info) (instance all_msgs::Point3d :init))
    )
   (send-super :init)
   (setq _unique_id __unique_id)
   (setq _polygon __polygon)
   (setq _left_point_index __left_point_index)
   (setq _right_point_index __right_point_index)
   (setq _cloud_indices __cloud_indices)
   (setq _latent_types __latent_types)
   (setq _size_type __size_type)
   (setq _mode __mode)
   (setq _in_roi __in_roi)
   (setq _tracking_state __tracking_state)
   (setq _geo_center __geo_center)
   (setq _geo_size __geo_size)
   (setq _trajectory __trajectory)
   (setq _history_velocity __history_velocity)
   (setq _history_type __history_type)
   (setq _gps_mode __gps_mode)
   (setq _gps_info __gps_info)
   self)
  (:unique_id
   (&rest __unique_id)
   (if (keywordp (car __unique_id))
       (send* _unique_id __unique_id)
     (progn
       (if __unique_id (setq _unique_id (car __unique_id)))
       _unique_id)))
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:left_point_index
   (&rest __left_point_index)
   (if (keywordp (car __left_point_index))
       (send* _left_point_index __left_point_index)
     (progn
       (if __left_point_index (setq _left_point_index (car __left_point_index)))
       _left_point_index)))
  (:right_point_index
   (&rest __right_point_index)
   (if (keywordp (car __right_point_index))
       (send* _right_point_index __right_point_index)
     (progn
       (if __right_point_index (setq _right_point_index (car __right_point_index)))
       _right_point_index)))
  (:cloud_indices
   (&rest __cloud_indices)
   (if (keywordp (car __cloud_indices))
       (send* _cloud_indices __cloud_indices)
     (progn
       (if __cloud_indices (setq _cloud_indices (car __cloud_indices)))
       _cloud_indices)))
  (:latent_types
   (&rest __latent_types)
   (if (keywordp (car __latent_types))
       (send* _latent_types __latent_types)
     (progn
       (if __latent_types (setq _latent_types (car __latent_types)))
       _latent_types)))
  (:size_type
   (&rest __size_type)
   (if (keywordp (car __size_type))
       (send* _size_type __size_type)
     (progn
       (if __size_type (setq _size_type (car __size_type)))
       _size_type)))
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:in_roi
   (&rest __in_roi)
   (if (keywordp (car __in_roi))
       (send* _in_roi __in_roi)
     (progn
       (if __in_roi (setq _in_roi (car __in_roi)))
       _in_roi)))
  (:tracking_state
   (&rest __tracking_state)
   (if (keywordp (car __tracking_state))
       (send* _tracking_state __tracking_state)
     (progn
       (if __tracking_state (setq _tracking_state (car __tracking_state)))
       _tracking_state)))
  (:geo_center
   (&rest __geo_center)
   (if (keywordp (car __geo_center))
       (send* _geo_center __geo_center)
     (progn
       (if __geo_center (setq _geo_center (car __geo_center)))
       _geo_center)))
  (:geo_size
   (&rest __geo_size)
   (if (keywordp (car __geo_size))
       (send* _geo_size __geo_size)
     (progn
       (if __geo_size (setq _geo_size (car __geo_size)))
       _geo_size)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:history_velocity
   (&rest __history_velocity)
   (if (keywordp (car __history_velocity))
       (send* _history_velocity __history_velocity)
     (progn
       (if __history_velocity (setq _history_velocity (car __history_velocity)))
       _history_velocity)))
  (:history_type
   (&rest __history_type)
   (if (keywordp (car __history_type))
       (send* _history_type __history_type)
     (progn
       (if __history_type (setq _history_type (car __history_type)))
       _history_type)))
  (:gps_mode
   (&rest __gps_mode)
   (if (keywordp (car __gps_mode))
       (send* _gps_mode __gps_mode)
     (progn
       (if __gps_mode (setq _gps_mode (car __gps_mode)))
       _gps_mode)))
  (:gps_info
   (&rest __gps_info)
   (if (keywordp (car __gps_info))
       (send* _gps_info __gps_info)
     (progn
       (if __gps_info (setq _gps_info (car __gps_info)))
       _gps_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/UInt32 _unique_id
    (send _unique_id :serialization-length)
    ;; all_msgs/Point3f[] _polygon
    (apply #'+ (send-all _polygon :serialization-length)) 4
    ;; std_msgs/Int32 _left_point_index
    (send _left_point_index :serialization-length)
    ;; std_msgs/Int32 _right_point_index
    (send _right_point_index :serialization-length)
    ;; std_msgs/Int32[] _cloud_indices
    (apply #'+ (send-all _cloud_indices :serialization-length)) 4
    ;; std_msgs/Float32[] _latent_types
    (apply #'+ (send-all _latent_types :serialization-length)) 4
    ;; std_msgs/Int32 _size_type
    (send _size_type :serialization-length)
    ;; std_msgs/Int32 _mode
    (send _mode :serialization-length)
    ;; std_msgs/Bool _in_roi
    (send _in_roi :serialization-length)
    ;; std_msgs/Int32 _tracking_state
    (send _tracking_state :serialization-length)
    ;; all_msgs/Point3f _geo_center
    (send _geo_center :serialization-length)
    ;; all_msgs/Point3f _geo_size
    (send _geo_size :serialization-length)
    ;; all_msgs/Point3f[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ;; all_msgs/Point3f[] _history_velocity
    (apply #'+ (send-all _history_velocity :serialization-length)) 4
    ;; std_msgs/Int32[] _history_type
    (apply #'+ (send-all _history_type :serialization-length)) 4
    ;; std_msgs/Int32 _gps_mode
    (send _gps_mode :serialization-length)
    ;; all_msgs/Point3d _gps_info
    (send _gps_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/UInt32 _unique_id
       (send _unique_id :serialize s)
     ;; all_msgs/Point3f[] _polygon
     (write-long (length _polygon) s)
     (dolist (elem _polygon)
       (send elem :serialize s)
       )
     ;; std_msgs/Int32 _left_point_index
       (send _left_point_index :serialize s)
     ;; std_msgs/Int32 _right_point_index
       (send _right_point_index :serialize s)
     ;; std_msgs/Int32[] _cloud_indices
     (write-long (length _cloud_indices) s)
     (dolist (elem _cloud_indices)
       (send elem :serialize s)
       )
     ;; std_msgs/Float32[] _latent_types
     (write-long (length _latent_types) s)
     (dolist (elem _latent_types)
       (send elem :serialize s)
       )
     ;; std_msgs/Int32 _size_type
       (send _size_type :serialize s)
     ;; std_msgs/Int32 _mode
       (send _mode :serialize s)
     ;; std_msgs/Bool _in_roi
       (send _in_roi :serialize s)
     ;; std_msgs/Int32 _tracking_state
       (send _tracking_state :serialize s)
     ;; all_msgs/Point3f _geo_center
       (send _geo_center :serialize s)
     ;; all_msgs/Point3f _geo_size
       (send _geo_size :serialize s)
     ;; all_msgs/Point3f[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;; all_msgs/Point3f[] _history_velocity
     (write-long (length _history_velocity) s)
     (dolist (elem _history_velocity)
       (send elem :serialize s)
       )
     ;; std_msgs/Int32[] _history_type
     (write-long (length _history_type) s)
     (dolist (elem _history_type)
       (send elem :serialize s)
       )
     ;; std_msgs/Int32 _gps_mode
       (send _gps_mode :serialize s)
     ;; all_msgs/Point3d _gps_info
       (send _gps_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/UInt32 _unique_id
     (send _unique_id :deserialize buf ptr-) (incf ptr- (send _unique_id :serialization-length))
   ;; all_msgs/Point3f[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (let (r) (dotimes (i n) (push (instance all_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Int32 _left_point_index
     (send _left_point_index :deserialize buf ptr-) (incf ptr- (send _left_point_index :serialization-length))
   ;; std_msgs/Int32 _right_point_index
     (send _right_point_index :deserialize buf ptr-) (incf ptr- (send _right_point_index :serialization-length))
   ;; std_msgs/Int32[] _cloud_indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cloud_indices (let (r) (dotimes (i n) (push (instance std_msgs::Int32 :init) r)) r))
     (dolist (elem- _cloud_indices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Float32[] _latent_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latent_types (let (r) (dotimes (i n) (push (instance std_msgs::Float32 :init) r)) r))
     (dolist (elem- _latent_types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Int32 _size_type
     (send _size_type :deserialize buf ptr-) (incf ptr- (send _size_type :serialization-length))
   ;; std_msgs/Int32 _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;; std_msgs/Bool _in_roi
     (send _in_roi :deserialize buf ptr-) (incf ptr- (send _in_roi :serialization-length))
   ;; std_msgs/Int32 _tracking_state
     (send _tracking_state :deserialize buf ptr-) (incf ptr- (send _tracking_state :serialization-length))
   ;; all_msgs/Point3f _geo_center
     (send _geo_center :deserialize buf ptr-) (incf ptr- (send _geo_center :serialization-length))
   ;; all_msgs/Point3f _geo_size
     (send _geo_size :deserialize buf ptr-) (incf ptr- (send _geo_size :serialization-length))
   ;; all_msgs/Point3f[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance all_msgs::Point3f :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; all_msgs/Point3f[] _history_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _history_velocity (let (r) (dotimes (i n) (push (instance all_msgs::Point3f :init) r)) r))
     (dolist (elem- _history_velocity)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Int32[] _history_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _history_type (let (r) (dotimes (i n) (push (instance std_msgs::Int32 :init) r)) r))
     (dolist (elem- _history_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Int32 _gps_mode
     (send _gps_mode :deserialize buf ptr-) (incf ptr- (send _gps_mode :serialization-length))
   ;; all_msgs/Point3d _gps_info
     (send _gps_info :deserialize buf ptr-) (incf ptr- (send _gps_info :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::SupplementInfo :md5sum-) "f732019e3813a01320832404d7727553")
(setf (get all_msgs::SupplementInfo :datatype-) "all_msgs/SupplementInfo")
(setf (get all_msgs::SupplementInfo :definition-)
      "std_msgs/UInt32     unique_id

Point3f[]           polygon
std_msgs/Int32      left_point_index 
std_msgs/Int32      right_point_index 

std_msgs/Int32[]    cloud_indices

std_msgs/Float32[]  latent_types
std_msgs/Int32      size_type 
std_msgs/Int32      mode 
std_msgs/Bool       in_roi 
std_msgs/Int32      tracking_state
Point3f             geo_center 
Point3f             geo_size 



Point3f[]           trajectory 
Point3f[]           history_velocity
std_msgs/Int32[]    history_type 
std_msgs/Int32      gps_mode 
Point3d             gps_info 

================================================================================
MSG: std_msgs/UInt32
uint32 data
================================================================================
MSG: all_msgs/Point3f
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: all_msgs/Point3d
std_msgs/Float64 x 
std_msgs/Float64 y 
std_msgs/Float64 z 

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :all_msgs/SupplementInfo "f732019e3813a01320832404d7727553")


