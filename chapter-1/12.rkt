#lang racket

(define (pascal row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pascal (- row 1) col)
                 (pascal (- row 1) (- col 1))))))

; print first 10 rows
(define rng (in-range 1 10))

(for ([i rng])
  (for ([j rng])
    (and (<= j i)
         (display (pascal i j)) (display " ")))
  (newline))
