(define (f g)
    (g 2))

; (f square)
; 4

; (f (lambda (z) (* z (+ z 1))))
; 6

; if called
; (f f)
; (f 2)
; (2 2)
; Error
