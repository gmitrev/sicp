#lang planet neil/sicp

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)

(define (2+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(2+ 4 5)