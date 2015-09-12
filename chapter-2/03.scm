#lang scheme

(require rackunit
         rackunit/text-ui
         "02.scm")

(define (make-rect p1 p2)
  (cons p1 p2))

(define (top-left r)
  (car r))

(define (bottom-right r)
  (cdr r))

(define (rect-length r)
  (let ((top-x (x-point (top-left r)))
        (bottom-x (x-point (bottom-right r))))
    (abs (- top-x bottom-x))))

(define (rect-height r)
  (let ((top-y (y-point (top-left r)))
        (bottom-y (y-point (bottom-right r))))
    (abs (- top-y bottom-y))))

(define (rect-area r)
  (let ((length (rect-length r))
        (height (rect-height r)))
    (* length height)))

(define (rect-perimeter r)
  (let ((length (rect-length r))
        (height (rect-height r)))
    (+ (* length 2) (* height 2))))

; Tests
(define p1 (make-point 1 3))
(define p2 (make-point 5 1))

(define rect (make-rect p1 p2))

(define rect-tests
  (test-suite
   "Rectangle"
   (test-case
    "Perimeter"
    (check-equal?
     (rect-perimeter rect)
     12))
   (test-case
    "Area"
    (check-equal?
     (rect-area rect)
     8))))
     
(run-tests rect-tests)