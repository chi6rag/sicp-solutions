;; Ben Bitdiddle has invented a test to determine whether the interpreter
;; he is faced with is using applicative-order evaluation or normal-order
;; evaluation. He defines the following two procedures:

;; (define (p) (p))
;;   (define (test x y)
;;     (if (= x 0) 0
;;  y))

;; Then he evaluates the expression (test 0 (p))
;; What behavior will Ben observe with an interpreter that uses applicative
;; -order evaluation? What behavior will he observe with an interpreter
;; that uses normal-order evaluation? Explain your answer. (Assume that the
;; evaluation rule for the special form if is the same whether the
;; interpreter is using normal or applicative order: The predicate expression
;; is evaluated first, and the result determines whether to evaluate the
;; consequent or the alternative expression.)

;; --- answer ---
;; applicative order evaluation
;; in aoe, the interpreter evaluates the arguments first and then evaluates
;; the method onto which the arguments are called

;; normal order evaluation
;; in noe,
;; - if the argument is a method, (the body of the method is copied with its
     arguments substituted) inside the method it is called in
   - if the argument is a primitive, then it remains as it is
;; the breakdown happens as such until all the values are primitive, and then
;; the value of the expression is calculated

;; case 1 - aoe
;; (test 0 (p))
;; (test 0 (p))
;; - note - calling procedure p like (p) will call procedure p again
;; according to definition
;; which makes it stick in infinite loop

;; case 2 - noe
;; (test 0 (p))
;; 0
;; (p) will never be executed