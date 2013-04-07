(define (gcd a b)
    (if (= b 0)
        a
    (gcd b (remainder a b))))

(define (cons x y)
    (lambda(m) (m x y)))

(define (car z)
    (z (lambda (x y) x)))

(define (cdr z)
    (z (lambda (x y) y)))

(define (make-rat x y)
    (cons x y))

(define (numer x)
    (car x))

(define (denom x)
    (cdr x))

(define (pow x y)
    (if (= y 1)
        x
        (* x (pow x (- y 1)))))

(define (test-rat a b)
    (make-rat (* (pow 2 a) (pow 3 b))))

(define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
                 (* (denom x) (denom y))))

(define (div-rat x y)
    (make-rat (* (numer x) (denom y))
                 (* (denom x) (denom y))))

(define (equal-rat? x y)
    (= (* (numer x) (denom y))
       (* (numer x) (denom y))))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(define one-half (make-rat 1 2))
(define one-third (make-rat 1 3))

(print-rat one-half)
(print-rat one-third)
(print-rat (add-rat one-half one-third))
(print-rat (mul-rat one-half one-third))
(print-rat (div-rat one-half one-third))

(print-rat (add-rat one-third one-third))

