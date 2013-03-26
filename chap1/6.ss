(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (square x)
	(* x x))

(define (good-enough? guess x)
     (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqrt x)
	(sqrt-iter 1.0 x))

;(define (new-if predicate then-clause else-clause)
;	(if (predicate) then-clause else-clause))

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
	      (else else-clause)))

(define (sqrt-iter-x guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter-x (improve guess x) x)))

(define (sqrt-x x)
	(sqrt-iter-x 1.0 x))