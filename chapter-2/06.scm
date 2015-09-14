#lang scheme

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

; wtf
(define (+ x y)
  (lambda (f) (lambda (x) ((x f) ((y f) x)))))

(+ one two)