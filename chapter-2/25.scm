#lang scheme

(define e1 '(1 3 (5 7) 9))

(cadr (caddr e1))

(define e2 (list (list 7)))

(caar e2)


(define e3 '(1 (2 (3 (4 (5 (6 7)))))))

; fuck
(cadr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr e3)))))))))))