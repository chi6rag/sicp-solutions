#lang scheme

;; compute the factorial of a number
;; using iteration

(define (factorial number)
  (define (factorial-iteration product index element)(
      cond((> index element) product)
      (else ( factorial-iteration (* index product) (+ index 1) element )
      )
    )
  )
  (factorial-iteration 1 1 number)
)

(display (factorial 5))