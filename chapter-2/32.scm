#lang scheme

(define (subsets s)
  (if (null? s)
      (list null)
      (let ((rest (subsets (cdr s))))
        (append rest (map (λ (subset) (cons (car s) subset)) rest)))))

(subsets (list 1 2 3))