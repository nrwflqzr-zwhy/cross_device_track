;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Point4f)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Point4f (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::POINT4F")
  (make-package "ALL_MSGS::POINT4F"))

(in-package "ROS")
;;//! \htmlinclude Point4f.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Point4f
  :super ros::object
  :slots (_x _y _z _i ))

(defmethod all_msgs::Point4f
  (:init
   (&key
    ((:x __x) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    ((:z __z) (instance std_msgs::Float32 :init))
    ((:i __i) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _i __i)
   self)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:i
   (&rest __i)
   (if (keywordp (car __i))
       (send* _i __i)
     (progn
       (if __i (setq _i (car __i)))
       _i)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _x
    (send _x :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ;; std_msgs/Float32 _z
    (send _z :serialization-length)
    ;; std_msgs/Float32 _i
    (send _i :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _x
       (send _x :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;; std_msgs/Float32 _z
       (send _z :serialize s)
     ;; std_msgs/Float32 _i
       (send _i :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float32 _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;; std_msgs/Float32 _i
     (send _i :deserialize buf ptr-) (incf ptr- (send _i :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::Point4f :md5sum-) "4743d309d7a476dab23f1b8e2261bd00")
(setf (get all_msgs::Point4f :datatype-) "all_msgs/Point4f")
(setf (get all_msgs::Point4f :definition-)
      "std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
std_msgs/Float32 i 

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :all_msgs/Point4f "4743d309d7a476dab23f1b8e2261bd00")


