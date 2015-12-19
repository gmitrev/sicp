#lang scheme

(define (fold-right op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op initial (cdr sequence)))))

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define (reverse sequence)
  (fold-right (lambda (x y) (append y (list x))) '() sequence))

(reverse '(1 2 3))

(define (reverse-2 sequence)
  (fold-left (lambda (x y) (append (list x) y)) '() sequence))

(reverse '(1 2 3))