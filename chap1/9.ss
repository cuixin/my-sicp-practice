;; This function is using recursion to expand, then to reduce.
(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))

;; This function is using iteration to calculate.
(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))