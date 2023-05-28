;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::EndPoints)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'EndPoints (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::ENDPOINTS")
  (make-package "ALL_MSGS::ENDPOINTS"))

(in-package "ROS")
;;//! \htmlinclude EndPoints.msg.html


(defclass all_msgs::EndPoints
  :super ros::object
  :slots (_start _end ))

(defmethod all_msgs::EndPoints
  (:init
   (&key
    ((:start __start) (instance all_msgs::Point2f :init))
    ((:end __end) (instance all_msgs::Point2f :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:serialization-length
   ()
   (+
    ;; all_msgs/Point2f _start
    (send _start :serialization-length)
    ;; all_msgs/Point2f _end
    (send _end :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; all_msgs/Point2f _start
       (send _start :serialize s)
     ;; all_msgs/Point2f _end
       (send _end :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; all_msgs/Point2f _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; all_msgs/Point2f _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;;
   self)
  )

(setf (get all_msgs::EndPoints :md5sum-) "8837e560fc11e0ded6ca2f9a297edb61")
(setf (get all_msgs::EndPoints :datatype-) "all_msgs/EndPoints")
(setf (get all_msgs::EndPoints :definition-)
      "Point2f start 
Point2f end 

================================================================================
MSG: all_msgs/Point2f
std_msgs/Float32 x 
std_msgs/Float32 y 

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :all_msgs/EndPoints "8837e560fc11e0ded6ca2f9a297edb61")


