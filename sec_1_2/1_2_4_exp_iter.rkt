#lang scheme

;; write a method to calculate
;; value of a number to the power
;; of n using iteration

(define (exp base power)
  (define (exp-iter product base power)(
      if (= power 0) product
      (exp-iter (* product base) base (- power 1))
    )
  )
  ( exp-iter 1 base power )
)

(display (exp 3 3))