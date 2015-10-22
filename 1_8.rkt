#lang scheme

(define (square x)(* x x))

(define (improve guess number)
  (/ 
    (+ (/ number (square guess)) (* 2 guess) )
    3
  )
)

(define (abs x)(
    cond((< x 0)(- x))
    (else x)
  )
)

(define (good_enough? guess old_guess)(
    < (/ (abs (- guess old_guess)) guess) 0.001
  )
)

(define (try guess old_guess number)(
  cond((good_enough? (improve guess number) old_guess) guess)
  (else (try (improve guess number) guess number ))
  )
)

(display (try 1.0 1.0 27))