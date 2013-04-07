(define (pascal row col)
    (cond ((< row col) 0)
          ((= row 1) 1)
          ((= row col) 1)
          ((= col 1) 1)
          (else (+ (pascal (- row 1) (- col 1))
                   (pascal (- row 1) col)))))

;; pascal recursive calculation
; (pascal 5 3)
; (+ (pascal 4 2) (pascal 4 3))
; (+ (+ (pascal 3 1) (pascal 3 2)) (pascal 4 3))
; (+ (+ 1 (pascal 3 2)) (pascal 4 3))
; (+ (+ 1 (+ (pascal 2 1) (pascal 2 2))) (pascal 4 3))
; (+ (+ 1 (+ 1 (pascal 2 2))) (pascal 4 3))
; (+ (+ 1 (+ 1 1)) (pascal 4 3))
; (+ (+ 1 2) (pascal 4 3))
; (+ 3 (pascal 4 3))
; (+ 3 (+ (pascal 3 2) (pascal 3 3)))
; (+ 3 (+ (pascal 3 2) 1))
; (+ 3 (+ (+ (pascal 2 1) (pascal 2 2)) 1))
; (+ 3 (+ (+ 1 (pascal 2 2)) 1))
; (+ 3 (+ (+ 1 1) 1))
; (+ 3 (+ 2 1))
; (+ 3 3)
; 6

; (pascal 4 2)
; (+ (pascal 3 1) (pascal 3 2))
; (+ 1 (pascal 3 2))
; (+ 1 (+ (pascal 2 1) (pascal 2 2)))
; (+ 1 (+ 1 (pascal 2 2)))
; (+ 1 (+ 1 1))
; (+ 1 2)
; 3


;; start with zero version
(define (pascal-2 row col)
    (cond ((< row col) 0)
          ((= row 0) 1)
          ((= row col) 1)
          ((= col 0) 1)
          (else (+ (pascal-2 (- row 1) (- col 1))
                   (pascal-2 (- row 1) col)))))

;; pascal iterative version
;; it's more fast than recrsive version
;; but's the index is starting at 0
;; example: (pascal-iter 0 0)  1
;;          (pascal-iter 1 0)  1   (pascal-iter 1 1)  1
;;          (pascal-iter 2 0)  1   (pascal-iter 2 1)  2  (pascal-iter 2 2)  1
;;          (pascal-iter 3 0)  1   (pascal-iter 3 1)  3  (pascal-iter 3 2)  3  (pascal-iter 3 3)  1

(define (pascal-iter r c)
        (define (iter col val)
                (if (= col c)
                    (/ (* val (- (+ r 1) col)) col)
                    (iter (+ col 1) (/ (* val (- (+ r 1) col)) col))))
        (cond ((or (< c 0) (> c r)) 0)
              ((or (= c 0) (= c r)) 1)
              (else (iter 1 1))))

(define (range i n)
        (if (> i n)
            '()
            (cons i (range (+ i 1) n))))

(define (general-pascal n)
	    (map (lambda(row) (map (lambda(col) (pascal-iter row col)) (range 0 row))) (range 0 (- n 1))))

(define (general-pascal-2 n)
	    (map (lambda(row) (map (lambda(col) (pascal-2 row col)) (range 0 row))) (range 0 (- n 1))))