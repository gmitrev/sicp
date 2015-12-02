#lang racket
(define tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7))) ; => (1 (4 (9 16) 25) (36 49))

(define (square x)
  (* x x))

(define (tree-map f tree)
  (map (λ (sub-tree)
         (if (list? sub-tree)
             (tree-map f sub-tree)
             (f sub-tree)))
       tree))

(define (square-tree tree) (tree-map square tree))

(square-tree tree)