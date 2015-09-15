#lang scheme

(define (same-parity first . rest)
  (let ((f (if (odd? first) odd? even?)))
    (cons first (filter f rest))))
  
(same-parity 1 2 3 4 5 6 7)