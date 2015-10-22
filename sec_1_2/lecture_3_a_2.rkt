#lang scheme

;; calculating sum of squares of all numbers from lower 
;; bound to upper bound using recursion

(define (square x)(* x x))

(define (sum_of_squares lower_bound upper_bound)(
    cond((> lower_bound upper_bound) 0)
    (else (+ 
            (square lower_bound )
            (sum_of_squares (+ lower_bound 1) upper_bound) 
          )
    )
  )
)

(display (sum_of_squares 1 3))