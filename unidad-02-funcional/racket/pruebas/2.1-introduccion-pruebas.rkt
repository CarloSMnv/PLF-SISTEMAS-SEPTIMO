#lang racket

;; Pruebas del tema 2.1 (Introducción al modelo funcional).
;; Corre con: racket 2.1-introduccion-pruebas.rkt
;; Mientras los ejercicios tengan su TODO sin resolver, estas pruebas FALLAN
;; (a propósito: así sabes qué falta).

(require rackunit
         "../ejercicios/2.1-introduccion-ejercicio1.rkt"
         "../ejercicios/2.1-introduccion-ejercicio2.rkt"
         "../ejercicios/2.1-introduccion-ejercicio3.rkt")

(define pruebas
  (test-suite
   "Tema 2.1"

   (test-case "triple"
     (check-equal? (triple 4) 12)
     (check-equal? (triple 0) 0)
     (check-equal? (triple -2) -6))

   (test-case "agregar-al-final"
     (check-equal? (agregar-al-final '(1 2 3) 4) '(1 2 3 4))
     (check-equal? (agregar-al-final '() 1) '(1))
     ;; la lista original no debe modificarse
     (let ([original '(1 2 3)])
       (agregar-al-final original 9)
       (check-equal? original '(1 2 3))))

   (test-case "aplicar-n-veces"
     (check-equal? (aplicar-n-veces 3 (lambda (x) (* x 2)) 1) 8)
     (check-equal? (aplicar-n-veces 0 (lambda (x) (* x 100)) 5) 5)
     (check-equal? (aplicar-n-veces 2 (lambda (s) (string-append s "!")) "hola") "hola!!"))))

(require rackunit/text-ui)
(void (run-tests pruebas))
