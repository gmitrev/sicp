#lang scheme

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define (total-weight mobile)
  (if (number? mobile)
      mobile
      (+ (total-weight (branch-structure (left-branch mobile)))
         (total-weight (branch-structure (right-branch mobile))))))
  

(define mobile (make-mobile
                (make-branch 1 10)
                (make-branch 1
                             (make-mobile
                              (make-branch 1 10)
                              (make-branch 1 10)))))

(total-weight mobile) ; => 30

(define (torque branch)
  (* (branch-length branch)
     (total-weight (branch-structure branch))))

(torque (left-branch mobile)) ; => 10
(torque (right-branch mobile)) ; => 20

        


