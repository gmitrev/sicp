#lang scheme

(define (accumulate f initial sequence)
  (if (null? sequence)
      initial
      (f (car sequence)
         (accumulate f initial (cdr sequence)))))

(define x (cons (list 1 2) (list 3 4)))

(define (flatten lst)
  (cond ((null? lst) lst)
        ((pair? lst) (append (flatten (car lst)) (flatten (cdr lst))))
        (else (list lst))))
  

(define (count-leaves t)
  (accumulate + 0 (map (λ (x) 1) (flatten t))))

(count-leaves x)
(count-leaves (list x x))
  