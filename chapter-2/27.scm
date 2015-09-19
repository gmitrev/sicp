#lang scheme

(require "18.scm")

(define (deep-reverse lst)
  (if (null? lst)
      '()
      (append (deep-reverse (cdr lst)) (list (reverse (car lst))))))

(deep-reverse '((1 2) (3 4)))
