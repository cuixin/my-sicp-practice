(define (fib-recur n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib-recur (- n 1))
                   (fib-recur (- n 2))))))

;; using recursive calculation:
; (fib-recur 5)
; (+ (fib-recur 4) (fib-recur 3))
; (+ (+ (fib-recur 3) (fib-recur 2)) (fib-recur 3))
; (+ (+ (+ (fib-recur 2) (fib-recur 1)) (fib-recur 2)) (fib-recur 3))
; (+ (+ (+ (fib-recur 2) 1) (fib-recur 2)) (fib-recur 3))
; (+ (+ (+ (+ (fib-recur 1) (fib-recur 0)) 1) (fib-recur 2)) (fib-recur 3))
; (+ (+ (+ (+ (fib-recur 1) 0) 1) (fib-recur 2)) (fib-recur 3))
; (+ (+ (+ (+ 1 0) 1) (fib-recur 2)) (fib-recur 3))
; (+ (+ (+ 1 1) (fib-recur 2)) (fib-recur 3))
; (+ (+ 2 (fib-recur 2)) (fib-recur 3))
; (+ (+ 2 (+ (fib-recur 1) (fib-recur 0))) (fib-recur 3))
; (+ (+ 2 (+ 1 0)) (fib-recur 3))
; (+ (+ 2 1) (fib-recur 3))
; (+ 3 (fib-recur 3))
; (+ 3 (+ (fib-recur 2) (fib-recur 1)))
; (+ 3 (+ (fib-recur 2) 1))
; (+ 3 (+ (+ (fib-recur 1) (fib-recur 0)) 1))
; (+ 3 (+ (+ (fib-recur 1) 0) 1))
; (+ 3 (+ (+ 1 0) 1))
; (+ 3 (+ 1 1))
; (+ 3 2)
; 5

(define (fib n)
    (define (fib-iter a b n)
        (if (= n 1)
            b
            (fib-iter b (+ a b) (- n 1))))
    (fib-iter 0 1 n))

;; using iterative calculation
; (fib 5)
; (fib-iter 0 1 5)
; (fib-iter 1 1 4)
; (fib-iter 2 1 3)
; (fib-iter 3 2 2)
; (fib-iter 5 3 1)
; 5