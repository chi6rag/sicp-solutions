#lang scheme

;; compute the sum of numbers
;; from lower bound to upper
;; bound using iteration

(define (sum_of_numbers lower_bound upper_bound)
  
  (define (sum_of_numbers_iteration sum lower_bound upper_bound)(
      cond((> lower_bound upper_bound) sum)
      (else (sum_of_numbers_iteration (+ sum lower_bound) (+ 1 lower_bound) upper_bound))
    )
  )

  (sum_of_numbers_iteration 0 lower_bound upper_bound)

)

(display (sum_of_numbers 3 3))