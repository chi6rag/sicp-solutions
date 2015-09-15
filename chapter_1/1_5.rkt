#lang racket

;; ---------- Exercise 1.1 ----------

;; 10
;; 10

;; (+ 5 3 4)
;; 12

;; (- 9 1)
;; 8

;; (/ 6 2)
;; 3

;; (+ (* 2 4) (- 4 6))
;; 6

;; (define a 3)
;;

;; (define b (+ a 1))
;; 

;; (+ a b (* a b))
;; 19

;; (= a b)
;; #f

;; (if (and (> b a) (< b (* a b)) ) b a)
;; 4

;; (cond ((= a 4) 6)
;;    ((= b 4) (+ 6 7 a))
;;    (else 25))
;; 16

;; (+ 2 (if (> b a) b a))
;; 6

;; (* (cond ((> a b) a)
;;    ((< a b) b)
;;    (else -1))
;;    (+ a 1))
;; 16


;; ---------- Exercise 1.2 ----------

(display (/ (+ 5 1 
						(- 2 
							(- 3 
						 		(+ 6 
						 			(/ 1 5)
						 		) 
						 	) 
						 )
					 )
					(* 3 (- 6 2) (- 2 7) )
			)
)

;; ---------- Exercise 1.3 ----------

(define (square x)(* x x))
(define (sum_of_squares x y)(+ (square x) (square y) ) )
(define (sum_of_larger_two x y z)
    (cond ( (and (< x y) (< x z)) (sum_of_squares y z) )
          ( (and (< y x) (< y z)) (sum_of_squares x z) )
          ( (and (< z x) (< z y)) (sum_of_squares x y) )
    )
)
(display (sos_larger_two 1 2 3) )

;; ---------- Exercise 1.4 ----------
;; (define (a-plus-abs-b a b)
;;  ((if (> b 0) + -) a b))
;;

;; ---------- Exercise 1.5 ----------
;; (define (p) (p))
;; (define (test x y)
;;   (if (= x 0) 0
;; 	 y))
;; 
;; (test 0 (p))
;; this gets stuck in an infinite loop
;; Why: it is because the interpreter uses application-order-evaluation.
;; This means that first, values of either of the arguments of test
;; is calculated, then the code in test is executed
;; If it were normal-order evaluation, it would recurse down until the 
;; primite set of values and would never get stuck in an infinite loop.