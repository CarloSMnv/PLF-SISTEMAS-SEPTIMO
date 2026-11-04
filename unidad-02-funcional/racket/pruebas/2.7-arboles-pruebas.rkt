#lang racket

;; Pruebas del tema 2.7 (Árboles).
;; Corre con: racket 2.7-arboles-pruebas.rkt
;;
;; Cada ejercicio define su propio struct `nodo` (son tipos distintos
;; aunque se llamen igual), así que los importamos con prefijo para
;; no chocar entre sí.

(require rackunit
         rackunit/text-ui
         (prefix-in e1: "../ejercicios/2.7-arboles-ejercicio1.rkt")
         (prefix-in e2: "../ejercicios/2.7-arboles-ejercicio2.rkt")
         (prefix-in e3: "../ejercicios/2.7-arboles-ejercicio3.rkt"))

(define pruebas
  (test-suite
   "Tema 2.7"

   (test-case "altura"
     (check-equal? (e1:altura '()) 0)
     (check-equal? (e1:altura (e1:insertar '() 5)) 1)
     (check-equal? (e1:altura (foldl (lambda (v a) (e1:insertar a v)) '() '(5 3 8 1))) 3))

   (test-case "contar-nodos"
     (check-equal? (e2:contar-nodos '()) 0)
     (check-equal? (e2:contar-nodos (foldl (lambda (v a) (e2:insertar a v)) '() '(5 3 8))) 3))

   (test-case "nivel-de"
     (define arbol (foldl (lambda (v a) (e3:insertar a v)) '() '(5 3 8 1)))
     (check-equal? (e3:nivel-de arbol 5) 0)
     (check-equal? (e3:nivel-de arbol 3) 1)
     (check-equal? (e3:nivel-de arbol 1) 2)
     (check-equal? (e3:nivel-de arbol 100) -1))))

(void (run-tests pruebas))
