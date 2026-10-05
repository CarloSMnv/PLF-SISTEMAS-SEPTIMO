#lang racket

;; Pruebas del tema 2.4 (Intervalos).
;; Corre con: racket 2.4-intervalos-pruebas.rkt

(require rackunit
         rackunit/text-ui
         "../ejercicios/2.4-intervalos-ejercicio1.rkt"
         "../ejercicios/2.4-intervalos-ejercicio2.rkt"
         "../ejercicios/2.4-intervalos-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.4"

   (test-case "suma-rango"
     (check-equal? (suma-rango 1 5) 15)
     (check-equal? (suma-rango 4 4) 4))

   (test-case "multiplos-de"
     (check-equal? (multiplos-de 3 15) '(3 6 9 12 15))
     (check-equal? (multiplos-de 5 4) '()))

   (test-case "primeros-n-pares"
     (check-equal? (primeros-n-pares 4) '(0 2 4 6))
     (check-equal? (primeros-n-pares 1) '(0)))))

(void (run-tests pruebas))
