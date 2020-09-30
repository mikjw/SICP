; Exercise 1.4.  Observe that our model of evaluation
; allows for combinations whose operators are 
; compound expressions. Use this observation to describe 
; the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The if statement evaluates to + or -
; depending on whether or not b is positive, 
; which is then applied to the arguments. This 
; effectively uses |b| in the operation.
