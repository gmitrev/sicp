#lang planet neil/sicp

(define (double n)
  (+ n n))

(define (halve n)
  (floor (/ n 2)))

(define (even? n)
  (= (remainder n 2) 0))

; rec
(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))

;iter
(define (** a b)
  (define (iter acc x y)
    (cond ((= y 0) acc)
          ((even? y) (iter acc (double x) (halve y)))
          (else (iter (+ acc x) x (- y 1)))))
  (iter 0 a b))