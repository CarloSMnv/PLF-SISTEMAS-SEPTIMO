#lang racket

;; Pruebas del tema 2.5 (Operadores).
;; Corre con: racket 2.5-operadores-pruebas.rkt

(require rackunit
         rackunit/text-ui
         "../ejercicios/2.5-operadores-ejercicio1.rkt"
         "../ejercicios/2.5-operadores-ejercicio2.rkt"
         "../ejercicios/2.5-operadores-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.5"

   (test-case "restar-de-diez"
     (check-equal? (restar-de-diez 3) 7)
     (check-equal? (restar-de-diez 10) 0))

   (test-case "^^"
     (check-equal? (^^ 2 10) 1024)
     (check-equal? (^^ 5 0) 1))

   (test-case "entre"
     (check-equal? (entre 5 1 10) #t)
     (check-equal? (entre 15 1 10) #f)
     (check-equal? (entre 1 1 10) #t))))

(void (run-tests pruebas))
