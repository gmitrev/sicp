#lang scheme

; is this the same as flatten?
(define (fringe lst)
  (cond ((null? lst) lst)
        ((pair? lst) (append (fringe (car lst)) (fringe (cdr lst))))
        (else (list lst))))
  
(define x (list (list 1 2) (list 3 4)))

(fringe x)

(fringe (list x x))

(fringe (list (list x x) (list x x)))