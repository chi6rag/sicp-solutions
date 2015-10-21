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

(define (good_enough? guess x)(
    < (abs(- (square guess) x)) 0.001
  )
)

(define (improve_guess guess x)(
    avg guess (/ x guess)
  )
)

(define (try guess x)(
    cond((good_enough? guess x) guess)
    ( else (try (improve_guess guess x) x) )
  )
)

(define (sqrt x)(
    try 1.00 x
  )
)

(display (sqrt 49))