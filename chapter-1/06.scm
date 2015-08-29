#lang planet neil/sicp

(define (new-if predicate then-clause else-clause)
  (cond [predicate then-clause]
        [else else-clause]))

; New-if evaluates all branches
(new-if #t (write "this will be printed") (write "this too"))

; If only evaluates the branch depending on the predicate
(if #f
    (write "I will not be printed")
    (write "Only I will be"))