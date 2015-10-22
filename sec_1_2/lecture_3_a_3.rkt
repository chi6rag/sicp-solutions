#lang scheme

(define (sum term lower_bound next upper_bound)(
    cond((> lower_bound upper_bound) 0)
    (else (+ (term lower_bound)
             (sum term (next lower_bound) next upper_bound)
          )
    )
  )
)

(define (sum_of_numbers lower_bound upper_bound)
  (define (identity x) x )  ;; ?
  (define (next x)(+ x 1))
  (sum identity lower_bound next upper_bound)
)

(define (sum_of_squares lower_bound upper_bound)
  (define (next x)(+ x 1))
  (define (square x)(* x x))
  (sum square lower_bound next upper_bound)
)

(display (sum_of_squares 1 3))