#lang racket

;; Pruebas del tema 2.6 (Aplicaciones de las listas).
;; Corre con: racket 2.6-listas-pruebas.rkt

(require rackunit
         rackunit/text-ui
         "../ejercicios/2.6-listas-ejercicio1.rkt"
         "../ejercicios/2.6-listas-ejercicio2.rkt"
         "../ejercicios/2.6-listas-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.6"

   (test-case "duplicar-todos"
     (check-equal? (duplicar-todos '(1 2 3)) '(2 4 6))
     (check-equal? (duplicar-todos '()) '()))

   (test-case "solo-pares"
     (check-equal? (solo-pares '(5 2 8 1 9 3)) '(2 8))
     (check-equal? (solo-pares '(1 3 5)) '()))

   (test-case "suma-con-foldr"
     (check-equal? (suma-con-foldr '(1 2 3 4)) 10)
     (check-equal? (suma-con-foldr '()) 0))))

(void (run-tests pruebas))
