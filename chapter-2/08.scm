#lang racket

(require "07.scm")

(provide sub-interval)

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define i1 (make-interval 1 10))
(define i2 (make-interval 50 100))

(sub-interval i1 i2)