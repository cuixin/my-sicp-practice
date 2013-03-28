(define (gcd-recur a b)
    (if (= b 0)
        a
        (gcd-recur b (remainder a b))))

(define (gcd a b)
    (define (gcd-iter a b n)
        (if (= n 0)
            b
            (gcd-iter b (remainder a b) (remainder b (remainder a b)))))
    (gcd-iter a b (remainder a b)))