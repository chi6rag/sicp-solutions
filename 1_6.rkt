#lang scheme

(define (new-if predicate then-cond else-cond)(
    cond(predicate then-cond)
    (else else-cond)
  )
)

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

(define (improve guess x)(
    avg guess (/ x guess)
  )
)

(define (sqrt-iter guess x)
  (display (good_enough? guess x))
  (new-if (good_enough? guess x) guess (sqrt-iter (improve guess x) x) )
)

(define (sqrt x)(
    sqrt-iter 1.00 x
  )
)

(display (sqrt 49))

;; when sqrt x is executed with new if, it lands in an infinite loop
;; in normal conditional, the evaluation order is such that the
;; predicate is first evaluated, and then, based on the evaluated
;; result from the predicate, the code is executed
;; white new-if is a procedure and list follows applicative order
;; meaning, each of the three fields will be evaluated first
;; problem is, each and every time, sqrt-iter improve will be executed
;; and so will sqrt-iter, hence infinite loop