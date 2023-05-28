;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Curve)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Curve (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::CURVE")
  (make-package "ALL_MSGS::CURVE"))

(in-package "ROS")
;;//! \htmlinclude Curve.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Curve
  :super ros::object
  :slots (_x_start _x_end _a _b _c _d ))

(defmethod all_msgs::Curve
  (:init
   (&key
    ((:x_start __x_start) (instance std_msgs::Float32 :init))
    ((:x_end __x_end) (instance std_msgs::Float32 :init))
    ((:a __a) (instance std_msgs::Float32 :init))
    ((:b __b) (instance std_msgs::Float32 :init))
    ((:c __c) (instance std_msgs::Float32 :init))
    ((:d __d) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _x_start __x_start)
   (setq _x_end __x_end)
   (setq _a __a)
   (setq _b __b)
   (setq _c __c)
   (setq _d __d)
   self)
  (:x_start
   (&rest __x_start)
   (if (keywordp (car __x_start))
       (send* _x_start __x_start)
     (progn
       (if __x_start (setq _x_start (car __x_start)))
       _x_start)))
  (:x_end
   (&rest __x_end)
   (if (keywordp (car __x_end))
       (send* _x_end __x_end)
     (progn
       (if __x_end (setq _x_end (car __x_end)))
       _x_end)))
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:c
   (&rest __c)
   (if (keywordp (car __c))
       (send* _c __c)
     (progn
       (if __c (setq _c (car __c)))
       _c)))
  (:d
   (&rest __d)
   (if (keywordp (car __d))
       (send* _d __d)
     (progn
       (if __d (setq _d (car __d)))
       _d)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _x_start
    (send _x_start :serialization-length)
    ;; std_msgs/Float32 _x_end
    (send _x_end :serialization-length)
    ;; std_msgs/Float32 _a
    (send _a :serialization-length)
    ;; std_msgs/Float32 _b
    (send _b :serialization-length)
    ;; std_msgs/Float32 _c
    (send _c :serialization-length)
    ;; std_msgs/Float32 _d
    (send _d :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _x_start
       (send _x_start :serialize s)
     ;; std_msgs/Float32 _x_end
       (send _x_end :serialize s)
     ;; std_msgs/Float32 _a
       (send _a :serialize s)
     ;; std_msgs/Float32 _b
       (send _b :serialize s)
     ;; std_msgs/Float32 _c
       (send _c :serialize s)
     ;; std_msgs/Float32 _d
       (send _d :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _x_start
     (send _x_start :deserialize buf ptr-) (incf ptr- (send _x_start :serialization-length))
   ;; std_msgs/Float32 _x_end
     (send _x_end :deserialize buf ptr-) (incf ptr- (send _x_end :serialization-length))
   ;; std_msgs/Float32 _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;; std_msgs/Float32 _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;; std_msgs/Float32 _c
     (send _c :deserialize buf ptr-) (incf ptr- (send _c :serialization-length))
   ;; std_msgs/Float32 _d
     (send _d :deserialize buf ptr-) (incf ptr- (send _d :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::Curve :md5sum-) "9a544adf692f69bcc100499d862d09b5")
(setf (get all_msgs::Curve :datatype-) "all_msgs/Curve")
(setf (get all_msgs::Curve :definition-)
      "std_msgs/Float32 x_start 
std_msgs/Float32 x_end 
std_msgs/Float32 a 
std_msgs/Float32 b 
std_msgs/Float32 c 
std_msgs/Float32 d 
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :all_msgs/Curve "9a544adf692f69bcc100499d862d09b5")


