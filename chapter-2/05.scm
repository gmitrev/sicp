#lang scheme

(define (cons x y)
  (* (expt 2 x)
     (expt 3 y)))

(define (car x)
  (even-divisions x 2))

(define (cdr x)
  (even-divisions x 3))

(define (even-divisions x n)
  (define (iter num acc)
    (let ((rem (remainder num n))
          (div (quotient num n)))
      (if (= rem 0)
          (iter div (+ acc 1))
          acc)))
  (iter x 0))