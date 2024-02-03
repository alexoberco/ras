;; Auto-generated. Do not edit!


(when (boundp 'ras_service::AddTwoInts)
  (if (not (find-package "RAS_SERVICE"))
    (make-package "RAS_SERVICE"))
  (shadow 'AddTwoInts (find-package "RAS_SERVICE")))
(unless (find-package "RAS_SERVICE::ADDTWOINTS")
  (make-package "RAS_SERVICE::ADDTWOINTS"))
(unless (find-package "RAS_SERVICE::ADDTWOINTSREQUEST")
  (make-package "RAS_SERVICE::ADDTWOINTSREQUEST"))
(unless (find-package "RAS_SERVICE::ADDTWOINTSRESPONSE")
  (make-package "RAS_SERVICE::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass ras_service::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod ras_service::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ras_service::AddTwoIntsResponse
  :super ros::object
  :slots (_suma ))

(defmethod ras_service::AddTwoIntsResponse
  (:init
   (&key
    ((:suma __suma) 0)
    )
   (send-super :init)
   (setq _suma (round __suma))
   self)
  (:suma
   (&optional __suma)
   (if __suma (setq _suma __suma)) _suma)
  (:serialization-length
   ()
   (+
    ;; int64 _suma
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _suma
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _suma (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _suma) (= (length (_suma . bv)) 2)) ;; bignum
              (write-long (ash (elt (_suma . bv) 0) 0) s)
              (write-long (ash (elt (_suma . bv) 1) -1) s))
             ((and (class _suma) (= (length (_suma . bv)) 1)) ;; big1
              (write-long (elt (_suma . bv) 0) s)
              (write-long (if (>= _suma 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _suma s)(write-long (if (>= _suma 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _suma
#+(or :alpha :irix6 :x86_64)
      (setf _suma (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _suma (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ras_service::AddTwoInts
  :super ros::object
  :slots ())

(setf (get ras_service::AddTwoInts :md5sum-) "35e98de862a014b3b63dfc10ab785a0e")
(setf (get ras_service::AddTwoInts :datatype-) "ras_service/AddTwoInts")
(setf (get ras_service::AddTwoInts :request) ras_service::AddTwoIntsRequest)
(setf (get ras_service::AddTwoInts :response) ras_service::AddTwoIntsResponse)

(defmethod ras_service::AddTwoIntsRequest
  (:response () (instance ras_service::AddTwoIntsResponse :init)))

(setf (get ras_service::AddTwoIntsRequest :md5sum-) "35e98de862a014b3b63dfc10ab785a0e")
(setf (get ras_service::AddTwoIntsRequest :datatype-) "ras_service/AddTwoIntsRequest")
(setf (get ras_service::AddTwoIntsRequest :definition-)
      "int64 a
int64 b
---
int64 suma
")

(setf (get ras_service::AddTwoIntsResponse :md5sum-) "35e98de862a014b3b63dfc10ab785a0e")
(setf (get ras_service::AddTwoIntsResponse :datatype-) "ras_service/AddTwoIntsResponse")
(setf (get ras_service::AddTwoIntsResponse :definition-)
      "int64 a
int64 b
---
int64 suma
")



(provide :ras_service/AddTwoInts "35e98de862a014b3b63dfc10ab785a0e")


