;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Indices)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Indices (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::INDICES")
  (make-package "ALL_MSGS::INDICES"))

(in-package "ROS")
;;//! \htmlinclude Indices.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Indices
  :super ros::object
  :slots (_indices ))

(defmethod all_msgs::Indices
  (:init
   (&key
    ((:indices __indices) ())
    )
   (send-super :init)
   (setq _indices __indices)
   self)
  (:indices
   (&rest __indices)
   (if (keywordp (car __indices))
       (send* _indices __indices)
     (progn
       (if __indices (setq _indices (car __indices)))
       _indices)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32[] _indices
    (apply #'+ (send-all _indices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32[] _indices
     (write-long (length _indices) s)
     (dolist (elem _indices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32[] _indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _indices (let (r) (dotimes (i n) (push (instance std_msgs::Int32 :init) r)) r))
     (dolist (elem- _indices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::Indices :md5sum-) "355aaec182bd3a24f494f1ab4a82fd9e")
(setf (get all_msgs::Indices :datatype-) "all_msgs/Indices")
(setf (get all_msgs::Indices :definition-)
      "std_msgs/Int32[]    indices
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :all_msgs/Indices "355aaec182bd3a24f494f1ab4a82fd9e")


