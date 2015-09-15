#lang scheme

(define (square-list items)
  (if (null? items)
      '()
      (cons (* (car items) (car items)) (square-list (cdr items)))))

(square-list '(1 2 3 4 5))

(define (square-list-2 items)
  (map (lambda (x) (* x x)) items))

(square-list-2 '(1 2 3 4 5))