#lang planet neil/sicp

; rec
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

; iter
(define (fast-expt-iter b n )
  (define (iter a b pow)
    (cond ((= pow 0) a)
          ((even? pow) (iter a (square b) (/ pow 2)))
          (else (iter (* a b) b (- pow 1)))))
  (iter 1 b n))

(fast-expt-iter 2 10)