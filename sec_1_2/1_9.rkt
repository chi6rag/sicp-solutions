#lang scheme

;; self wrote
;;(define (add num_one num_two)(
;;    cond((= num_one 0) num_two)
;;    (else (add
;;              (- num_one 1)
;;              (+ num_two 1)
;;          )
;;    )
;;  )
;; )

;; section 1.2.1
;; exercise 1.9

(define (inc x)(+ x 1))
(define (dec x)(- x 1))

;; way 1
;;(define (+ a b)
;;  (if (= a 0)
;;    b
;;    (inc (+ (dec a) b))
;;   )
;; )

;; way 2
(define (+ a b)
  (if (= a 0) b
      (+ (dec a) (inc b))
  )
)

;; way 1: (+ 4 5)
;; substitution expansion - illustration
;; (+ 4 5)
;; (dec 4) returns 3
;; inc yet to be executed <-----*-----*  9  ------> returns 9
;; (+ 3 4)                            |
;; (dec 3) returns 2            |     |
;; inc yet to be executed <-----|-----*  8  
;; (+ 2 4)                      |     |
;; (dec 2) returns 1            |     |
;; inc yet to be executed <-----|-----*  7  
;; (+ 1 4)                      |     |
;; (dec 1) returns 0            |     |
;; inc yet to be executed <-----|-----*  6  
;; (+ 0 4) returns 5 >----------*
;; recursive

;; way 2: (+ 4 5)
;; substitution expansion - illustration
;; (+ 4 5)
;; (+ (- 4 1) (+ 5 1))
;; (+ 3 6)
;; (+ (- 3 1) (+ 6 1))
;; (+ 2 7)
;; (+ (- 2 1) (+ 7 1))
;; (+ 1 8)
;; (+ (- 1 1) (+ 8 1))
;; (+ 0 9)
;; 9
;; iterative

(display (+ 4 5))