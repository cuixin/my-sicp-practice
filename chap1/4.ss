;; Descripe this function:
;; 1. check b if more than zero
;; 2. > 0 then use +, or use -
;; 3. >0 (+ a b), <0 (- a b)
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))