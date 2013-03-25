(define (max_num a b c)
    (define (max a b) (if (>= a b) a b))
    (+ (max a b) (max b c)))