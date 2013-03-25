(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))
(test 0 (p))
; if the parser is not regular express, it will do infinite loop.
; (p) will do first, so it will be never stop.
