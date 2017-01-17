;;;; @author Alejandro Parana
;;;; @date 4/15/2016
;;;; Challenge: List out even prime sums

(defun prime(n)
 (prime-test n 2))
 
(defun prime-test (n m)
	(if (= n m) T
	(if (=(float(/ n m))(round(/ n m))) NIL
	(prime-test n (+ 1 m)))))	

(defun primes(n)
    (cond((= n 2)(append (list 2)))
    ((cond((null(prime n))(primes(- n 1)))
    ((append(list n)(primes(- n 1))))))))	

(defun even-prime-sums (n)
   (dolist(x (primes n))
   (dolist(y (primes n))
   (if (= n (+ y x))
     (format t "~d + ~d = ~d~%" x y n)))))

(even-prime-sums 28)