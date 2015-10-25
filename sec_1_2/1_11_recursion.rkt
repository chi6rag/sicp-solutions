#lang scheme

;; f(n) = n if n<3
;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3

(define (f x)
  (
    if (< x 3) x
    (+ (f (- x 1))
        (* 2 (f (- x 2)))
        (* 3 (f (- x 3)))
    )
  )
)

(display (f 3))
(display "\n")