#lang scheme

(define (make-account balance initial-password)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch password m)
    (cond ((not (eq? password initial-password)) (error "Wrong password"))
          ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          (else (error "Unknown request" m))))
  dispatch)

(define a (make-account 5 'morituri))

((a 'morituri 'deposit) 5)
((a 'morituri 'withdraw) 10)
((a 'wrong 'deposit) 5)
