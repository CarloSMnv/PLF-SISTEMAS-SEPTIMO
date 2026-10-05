#lang racket

;; Pruebas del tema 2.3 (Funciones).
;; Corre con: racket 2.3-funciones-pruebas.rkt

(require rackunit
         rackunit/text-ui
         "../ejercicios/2.3-funciones-ejercicio1.rkt"
         "../ejercicios/2.3-funciones-ejercicio2.rkt"
         "../ejercicios/2.3-funciones-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.3"

   (test-case "sumar-n"
     (check-equal? ((sumar-n 5) 3) 8)
     (check-equal? ((sumar-n 0) 10) 10))

   (test-case "componer"
     (check-equal? ((componer (lambda (x) (* x 2)) (lambda (x) (+ x 3))) 5) 16)
     (check-equal? ((componer (lambda (x) x) (lambda (x) (* x 10))) 2) 20))

   (test-case "aplicar-si-cumple"
     (check-equal? (aplicar-si-cumple even? (lambda (x) (* x 2)) 4) 8)
     (check-equal? (aplicar-si-cumple even? (lambda (x) (* x 2)) 3) 3))))

(void (run-tests pruebas))
