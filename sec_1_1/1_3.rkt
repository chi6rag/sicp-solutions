#lang scheme

;; Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers

(define (square x)(* x x))

(define (sum_of_squares x y)(+ (square x) (square y)))

(define (sum_of_squares_of_two_larger x y z)(
    cond( (and (< x y) (< x z) )(sum_of_squares y z) )
        ( (and (< y x) (< y z) )(sum_of_squares x z) )
        ( (and (< z x) (< z y) )(sum_of_squares x y) )
  )
)

(display (sum_of_squares_of_two_larger 1 2 3))