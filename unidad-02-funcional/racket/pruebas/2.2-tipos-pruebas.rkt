#lang racket

;; Pruebas del tema 2.2 (El tipo de datos).
;; Corre con: racket 2.2-tipos-pruebas.rkt

(require rackunit
         rackunit/text-ui
         "../ejercicios/2.2-tipos-ejercicio1.rkt"
         "../ejercicios/2.2-tipos-ejercicio2.rkt"
         "../ejercicios/2.2-tipos-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.2"

   (test-case "distancia-origen"
     (check-equal? (distancia-origen (punto 3 4)) 5)
     (check-equal? (distancia-origen (punto 0 0)) 0))

   (test-case "area"
     (check-= (area (circulo 2)) 12.566370614359172 0.0001)
     (check-equal? (area (rectangulo 3 5)) 15))

   (test-case "mayor-area"
     (check-equal? (mayor-area (circulo 1) (rectangulo 3 5)) (rectangulo 3 5))
     (check-equal? (mayor-area (rectangulo 1 1) (circulo 5)) (circulo 5)))))

(void (run-tests pruebas))
