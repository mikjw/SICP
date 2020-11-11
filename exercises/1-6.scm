(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
            (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                        x)))

; The above definiiton of sqrt-iter using new-if
; would result in the interpreter entering an infinite loop.

; (if <predicate> <consequent> <alternative>)

; In the special form 'if' above, the <predicate> is  
; evaluated and the <consequent> and <alternative> evaluated only 
; if it returns true or false, respectively. This means a recursive 
; function can eventually reach its base condition and exit. However, 
; new-if is defined as a normal procedure and the interpreter will use 
; applicative-order evaluation, in which all the arguments are evaluated 
; first and in which the recursive <alternative> clause will be infinitely 
; expanded to itself. 