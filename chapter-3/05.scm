#lang scheme

(define (random-in-range low high)
  (+ (* (random) (- high low))
     low))

(define (estimate-pi trials)
  (sqrt (/ 6 (monte-carlo trials cesaro-test))))

(define (cesaro-test)
  (= (gcd (random 10000000) (random 10000000)) 1))

(define (estimate-integral predicate x1 x2 y1 y2 trials)
  (monte-carlo trials
               (λ () (predicate (random-in-range x1 x2)
                                (random-in-range y1 y2)))))

(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
           (/ trials-passed trials))
          ((experiment)
           (iter (- trials-remaining 1 ) (+ trials-passed 1 )))
          (else
           (iter (- trials-remaining 1) trials-passed))))
  (iter trials 0))

; a circle
(exact->inexact (* (estimate-integral
    (λ (x y)
      (<= (+ (* (- x 7) (- x 7)) (* (- y 5) (- y 5))) 4))
    4 10 3 7 5000000)
   (* 6 4)))
; => ~12.5619504

; pi 
(exact->inexact (* (estimate-integral
    (λ (x y)
      (<= (+ (* (- x 1) (- x 1)) (* (- y 1) (- y 1))) 1))
    0 1 0 1 5000000)
   (* 2 2)))
; => 3.14136
