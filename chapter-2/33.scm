#lang scheme

(define (accumulate f initial sequence)
  (if (null? sequence)
      initial
      (f (car sequence)
         (accumulate f initial (cdr sequence)))))

(accumulate * 1 '(1 2 3 4 5))

(define (map p sequence)
  (accumulate (λ (x y) (cons (p x) y)) '() sequence))

(map (lambda (x) (* x x)) '(1 2 3))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(append '(1 2 3) '(4 5 6))

(define (length sequence)
  (accumulate (lambda (a b) (+ b 1)) 0 sequence))

(length '(1 2 3 4 6)) ; => 5