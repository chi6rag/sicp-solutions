#lang scheme

;; compute the factorial of a number
;; using recursion
(define (factorial x)(
    cond((= x 1) 1)
    (else (* x (factorial (- x 1) )))
  )
)

(display (factorial 6))
