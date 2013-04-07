
(define (tree-map proc seq)
        (map (lambda(sub-seq)
                    (if (pair? sub-seq)
                        (tree-map proc sub-seq)
                        (proc sub-seq)))
             seq))

(define (square-tree tree)
        (tree-map square tree))

(square-tree
    (list 1
          (list 2 (list 3 4) 5)
          (list 6 7)))