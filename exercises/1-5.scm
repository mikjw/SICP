(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; In the above, an interpreter using applicative 
; order evaluation will enter an infinite loop when 
; it reaches (p); because all arguments are evaluated 
; first, (p) defined as itself would be cyclically 
; re-evaluated to itself. 

; An interpreter using normal order evaluation 
; would not face the same issue; the predicate 
; (= x 0) would evaluate to #t, so 0 would be 
; returned before the interpreter could reach (p).    

