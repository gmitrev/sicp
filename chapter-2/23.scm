#lang scheme

(define (for-each f coll)
  (if (null? coll)
      #t
      (and (f (car coll)) (for-each f (cdr coll)))))

(for-each (lambda (x) (display x) (newline))
          (list 57 321 88))
