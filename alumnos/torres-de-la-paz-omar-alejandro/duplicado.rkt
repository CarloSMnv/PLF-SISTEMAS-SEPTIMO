#lang racket
(define (duplicar lst)
  (map (lambda (x) (* x 2)) lst))

(duplicar '(1 2 3 4))   ; '(2 4 6 8) 
