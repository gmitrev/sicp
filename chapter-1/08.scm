#lang planet neil/sicp

;Newton's method for cube roots is based on the fact that if y is an 
;approximation to the cube root of x, then a better approximation is 
;given by the value (x/y^2 + 2y)/3. Use this formula to implement a 
;cube-root procedure analogous to the square-root procedure.

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (/ (abs (- (improve guess x) guess))
           guess)
        1e-10))
 
(define (cube x)
  (cube-iter 1.0 x))

(cube 50)
(cube 27)
(cube 64)