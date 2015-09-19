#lang scheme
(define (reverse lst)
  (if (null? lst)
      '()
      (append (reverse (cdr lst)) (list (car lst)))))

(define (deep-reverse lst)
  (if (null? lst)
      '()
      (append (deep-reverse (cdr lst)) (list (reverse (car lst))))))

(deep-reverse '((1 2) (3 4)))
