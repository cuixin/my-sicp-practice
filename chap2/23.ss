(define (for-each func col)
    (cond ((null? col) #t)
          (else 
              (func (car col))
              (for-each func (cdr col)))))

(for-each (lambda (x) (newline) (display x)) (list 1 2 3))