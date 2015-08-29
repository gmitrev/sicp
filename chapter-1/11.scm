#lang planet neil/sicp
; A function f is defined by the rule that f(n) = n if n < 3 and f(n) =
; f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3. Write a procedure that computes 
; f by means of recursive process. Write a procedure that computes f by
; means of iterative process.

; rec
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* (f (- n 2)) 2)
         (* (f (- n 3)) 3))))

(f 4) ; = 11
(f 5) ; = 25