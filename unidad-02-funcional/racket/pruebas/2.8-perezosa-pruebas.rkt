#lang racket

;; Pruebas del tema 2.8 (Evaluación perezosa).
;; Corre con: racket 2.8-perezosa-pruebas.rkt

(require rackunit
         rackunit/text-ui
         "../ejercicios/2.8-perezosa-ejercicio1.rkt"
         "../ejercicios/2.8-perezosa-ejercicio2.rkt"
         "../ejercicios/2.8-perezosa-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.8"

   (test-case "primeros-n-fibonacci"
     (check-equal? (primeros-n-fibonacci 6) '(0 1 1 2 3 5))
     (check-equal? (primeros-n-fibonacci 1) '(0)))

   (test-case "primeros-n-primos"
     (check-equal? (primeros-n-primos 5) '(2 3 5 7 11))
     (check-equal? (primeros-n-primos 1) '(2)))

   (test-case "primer-mayor-que"
     (check-equal? (primer-mayor-que 100 (naturales-desde 0)) 101)
     (check-equal? (primer-mayor-que 0 (naturales-desde 0)) 1))))

(void (run-tests pruebas))
