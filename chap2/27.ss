(define (reverse x)
    (define (iter col new-col)
        (if (null? col)
            new-col
            (iter (cdr col) (cons (car col) new-col))))
    (iter x '()))

(define (deep-reverse x)
    (define (iter col new-col)
        (if (null? col)
            new-col
            (let ((first (car col)))
                 (iter (cdr col) 
                       (cons (if (not (pair? first))
                                 first
                                 (deep-reverse first))
                             new-col)))))
    (iter x '()))

(define (deep-reverse-2 x)
    (if (pair? x)
        (reverse (map deep-reverse-2 x))
        x))