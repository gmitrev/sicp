#lang scheme

(provide reverse)

(define (reverse lst)
  (if (null? lst)
      '()
      (append (reverse (cdr lst)) (list (car lst)))))

(reverse '(4 5 6))