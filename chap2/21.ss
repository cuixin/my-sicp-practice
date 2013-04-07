
(define (square-list items)
	(map square items))

(define (square-list-it items)
	(if (null? items)
		'()
		(cons (square (car items)) (square-list-it (cdr items)))))

(square-list-it (list 1 2 3 4))
(square-list (list 1 2 3 4))
