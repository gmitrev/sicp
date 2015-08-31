#lang planet neil/sicp

; necessary functions from previous exercises
(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square n)
  (* n n))

(define (prime? n)
  (= n (smallest-divisor n)))

; here be dragons
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes a n)
  (if (> n 0)
      (if (prime? a)
          (begin
            (timed-prime-test a)
            (search-for-primes (+ a 2) (- n 1)))
          (search-for-primes (+ a 2) n))))
          

(search-for-primes 1001 3)
(search-for-primes 10001 3)
(search-for-primes 100001 3)
(search-for-primes 1000001 3)

;1009 *** 35
;1013 *** 3
;1019 *** 3
;10007 *** 7
;10009 *** 7
;10037 *** 8
;100003 *** 21
;100019 *** 20
;100043 *** 20
;1000003 *** 61
;1000033 *** 61
;1000037 *** 61