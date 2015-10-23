#lang scheme

;; compute the sum of numbers
;; from lower bound to upper
;; bound using recursion

(define (sum_of_numbers lower_bound upper_bound)(
    cond((= lower_bound upper_bound) lower_bound)
    (else (+ lower_bound
             (sum_of_numbers (+ lower_bound 1) upper_bound)
          )
    )
  )
)

(display (sum_of_numbers 1 3))