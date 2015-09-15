#lang scheme

(define (last-pair l)
  (if (null? (cdr l))
      l
      (last-pair (cdr l))))

(last-pair '(1 2 3))

             
  
