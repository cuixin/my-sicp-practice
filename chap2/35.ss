(define (accumulate op init seq)
        (if (null? seq)
            init
            (op (car seq)
                (accumulate op init (cdr seq)))))


(define (expand t)
        (cond ((null? t) '())
              ((not (pair? t)) (list t))
              (else (append (expand (car t))
                            (expand (cdr t))))))

(define (count-leaves t)
        (accumulate + 0 
                    (map (lambda(x) 1) (expand t))))

(define (count-leaves-2 t)
        (accumulate + 0 (map (lambda(x)
                                    (if (pair? x)
                                        (count-leaves-2 x)
                                        1)) t)))