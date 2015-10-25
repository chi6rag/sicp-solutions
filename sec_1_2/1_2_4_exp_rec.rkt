#lang scheme

;; write a method to calculate
;; value of a number to the power
;; of n

(define (exp base power)(
    if (= power 0) 1
    (* base
      (exp base (- power 1))
    )
  )
)

(display (exp 3 3))