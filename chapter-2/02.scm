#lang scheme

(require rackunit)
(provide average make-point x-point y-point)

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (make-segment a b)
  (cons a b))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))

(define (average x y)
  (/ (+ x y) 2))

(define (midpoint-segment s)
  (let ((x1 (x-point (start-segment s)))
        (x2 (x-point (end-segment s)))
        (y1 (y-point (start-segment s)))
        (y2 (y-point (end-segment s))))
    (let ((x (average x1 x2))
          (y (average y1 y2)))
      (make-point x y))))

(define (print-point p)
  (newline)
  (display"(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define point1 (make-point 0 2))
(define point2 (make-point 6 10))
(define segment (make-segment point1 point2))

(check-equal?
 (midpoint-segment segment)
 (cons 3 6))


