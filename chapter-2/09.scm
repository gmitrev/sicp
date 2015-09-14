#lang scheme

(require "07.scm" "08.scm")

(define i1 (make-interval 5 10))
(define i2 (make-interval 8 20))

(define (width-interval i)
  (/ (- (upper-bound i) (lower-bound i))
     2.0))
  
(width-interval i1) ; => 2.5
(width-interval i2) ; => 6

(define added-interval (add-interval i1 i2))
(width-interval added-interval); => 8.5 == 2.5 + 6

(define subtractet-interval (sub-interval i1 i2))
(width-interval subtractet-interval); => 8.5 == 2.5 + 6

(define multiplied-interval (mul-interval i1 i2))
(width-interval multiplied-interval); => 80 => no relation to the original width

(define divided-interval (div-interval i1 i2))
(width-interval divided-interval); => 0.5 => no relation to the original width