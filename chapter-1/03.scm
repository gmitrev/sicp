#lang planet neil/sicp

(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-two-largest-squares a b c)
  (cond [(and (>= a b) (>= b c)) (sum-of-squares a b)]
        [(and (>= b a) (>= c a)) (sum-of-squares b c)]
        [else (sum-of-squares a c)]))

