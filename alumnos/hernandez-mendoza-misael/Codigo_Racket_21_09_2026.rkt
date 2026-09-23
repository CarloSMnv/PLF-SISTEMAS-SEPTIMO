#lang racket

(define (duplicar lst)
  (map (lambda (x) (* x 2)) lst))

(displayln (duplicar '(1 2 3 4)))