#lang scheme

(define (make-monitored f)
  (let ((called-count 0))
    (define (call arg)
      (begin
        (set! called-count (+ called-count 1))
        (f arg)))
    (define (get-call-count)
      called-count)
    (define (dispatch arg)
      (cond ((eq? arg 'how-many-calls?) (get-call-count))
            (else (call arg))))
  dispatch))

(define s (make-monitored sqrt))

(s 100)

(s 'how-many-calls?)


(s 225)

(s 'how-many-calls?)


(s 169)

(s 'how-many-calls?)