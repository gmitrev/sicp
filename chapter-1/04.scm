#lang planet neil/sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))