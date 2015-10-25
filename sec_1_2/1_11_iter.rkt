#lang scheme

;; f(n) = n if n<3
;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3

(define (f x)
  (define (f-iter a b c count)(
      if(< count 3) c
      (f-iter b
              c
              (+ c (* 2 b) (* 3 a))
              (- count 1)
      )
    )
  )
  (
    if (< x 3) x
    (f-iter 0 1 2 x)
  )
)

(display (f 3))