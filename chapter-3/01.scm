#lang scheme

(define (make-accumulator initial)
  (λ (increase-by)
    (begin (set! initial (+ initial increase-by))
           initial)))

(define A (make-accumulator 5))
             
  
(A 10)

(A 10)