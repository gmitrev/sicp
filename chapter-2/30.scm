#lang scheme

(define tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7))) ; => (1 (4 (9 16) 25) (36 49))


(define (square-tree-map tree)
  (map (λ (sub-tree)
         (if (list? sub-tree)
             (square-tree-map sub-tree)
             (* sub-tree sub-tree)))
       tree))

(square-tree-map tree)

(define (square-tree-peasantly tree)
  (cond ((null? tree) null)
        ((not (list? tree)) (* tree tree))
        (else (cons (square-tree-peasantly (car tree))
                    (square-tree-peasantly (cdr tree))))))

(square-tree-peasantly tree)
