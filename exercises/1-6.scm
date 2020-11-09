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

; In the special form 'if' above, the <consequent> is always 
; evaluated first, with the <alternative> evaluated only if 
; it returns false. This allows a recursive function eventually 
; to reach its base condition and exit. However, new-if is 
; defined as a normal procedure and the interpreted will use 
; applicative-order evaluation, in which the <alternative>
; clause will be infintely expanded to itself. 