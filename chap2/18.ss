(define my-list (list 1 4 9 16 25))

(define (reverse x)
    (define (it col new-col)
        (if (null? col)
            new-col
            (it (cdr col) (cons (car col) new-col))))
    (if (null? x)
        nil
        (it x '())))

(reverse my-list)