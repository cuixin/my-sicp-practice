(define (expt-recur p n)
    (if (= n 1)
        p
        (* p (expt p (- n 1)))))

(define (expt p n)
    (define (expt-iter s p n)
        (if (= n 1)
            p
            (expt-iter s (* s p) (- n 1))))
    (expt-iter p p n))

(define (fast-expt b n)
    (define (square n)
        (* n n))
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
          (else (* b (fast-expt b (- n 1))))))

(define (expt-a b n)
    (define (fast-iter a b n)
        (cond ((= n 0) a)
              ((even? n) (fast-iter a (* b b) (/ n 2)))
              (else (fast-iter (* a b) b (- n 1)))))
    (fast-iter 1 b n))