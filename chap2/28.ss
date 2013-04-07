(define x (list (list 1 2) (list 3 4)))

(define (fringe x)
    (define (iter col new-col)
        (cond ((null? col) new-col)
              ((not (pair? col)) (cons col new-col))
              (else (iter (car col)
                          (iter (cdr col) new-col)))))
    (iter x '()))

(fringe x)

(fringe (list x x))