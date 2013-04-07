(define (fold-right op initial sequence)
    (define (iter result rest)
            (if (null? rest)
                result
                (iter (op result (car rest)) (cdr rest))))
    (iter initial sequence))

(define (fold-left op initial sequence)
    (define (iter result rest)
            (if (null? rest)
                result
                (iter (op (car rest) result) (cdr rest))))
    (iter initial sequence))

(= (/ 1 6) (fold-right / 1 (list 1 2 3)))
(= (/ 3 2) (fold-left / 1 (list 1 2 3)))
(equal? (list (list (list (list) 1) 2) 3) (fold-right list '() (list 1 2 3)))
(equal? (list 3 (list 2 (list 1 (list)))) (fold-left list '() (list 1 2 3)))