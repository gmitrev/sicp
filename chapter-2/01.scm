#lang planet neil/sicp

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (numer r)
  (car r))

(define (denom r)
  (cdr r))

(define (make-rat n d)
  (let ((g (abs (gcd n d))))
        (let ((num (/ n g))
              (den (/ d g)))
          (if (< d 0)
              (cons (- num) (- den))
              (cons num den)))))
        
(define (print-rat r)
  (newline)
  (display (numer r))
  (display "/")
  (display (denom r)))

(define one-half (make-rat 1 2))
(print-rat one-half)
(define one-third (make-rat 1 3))
(print-rat one-third)

(make-rat -1 -3) ; (1 3)
(make-rat -1 3)  ; (-1 3)
(make-rat 1 -3)  ; (-1 3)