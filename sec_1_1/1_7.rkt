#lang scheme

(define (abs x)(
    cond((> x 0) x)
    (else (- x))
  )
)

(define (avg x y)(
    / (+ x y) 2
  )
)

(define (square x)(* x x))

(define (good_enough? guess old_guess)
  ;; check the change of guess be less than 0.001
  (< (/ (abs (- guess old_guess)) guess) 0.001)
)

(define (improve_guess guess x)(
    avg guess (/ x guess)
  )
)

(define (try guess x old_guess)
  (
    cond((good_enough? (improve_guess guess x) old_guess) guess)
    ( else (try (improve_guess guess x) x guess) )
  )
)

(define (sqrt x)(
    try 1.00 x 1.00
  )
)

;; test fails for very small numbers
;; ---------------------------------
;; expecting 0.00002
(display (sqrt 0.0000000004))