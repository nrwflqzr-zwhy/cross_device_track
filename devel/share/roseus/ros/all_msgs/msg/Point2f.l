;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Point2f)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Point2f (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::POINT2F")
  (make-package "ALL_MSGS::POINT2F"))

(in-package "ROS")
;;//! \htmlinclude Point2f.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Point2f
  :super ros::object
  :slots (_x _y ))

(defmethod all_msgs::Point2f
  (:init
   (&key
    ((:x __x) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _x
    (send _x :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _x
       (send _x :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::Point2f :md5sum-) "baababb5c5dd8e2ace650c8c021e6efe")
(setf (get all_msgs::Point2f :datatype-) "all_msgs/Point2f")
(setf (get all_msgs::Point2f :definition-)
      "std_msgs/Float32 x 
std_msgs/Float32 y 

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :all_msgs/Point2f "baababb5c5dd8e2ace650c8c021e6efe")


