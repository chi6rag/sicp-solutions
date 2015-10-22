#lang scheme

;; add numbers from lower bound to upper bound
(define (add lower_bound upper_bound)
  (
    cond((> lower_bound upper_bound) 0)
    (else (+  lower_bound 
              (add (+ 1 lower_bound) upper_bound)
          )
    )
  )
)

(display (add 1 10))