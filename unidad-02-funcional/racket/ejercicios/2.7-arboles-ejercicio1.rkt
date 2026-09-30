#lang racket

;; Ejercicio 1 (fácil) — Tema 2.7: Árboles
;;
;; Se te da el struct `nodo` y una función `insertar` ya lista.
;; Implementa `altura`, que regresa la altura del árbol (número de
;; niveles). El árbol vacío tiene altura 0; un solo nodo tiene altura 1.
;; Ejemplo: (altura (insertar (insertar '() 5) 3)) debe dar 2

(provide (struct-out nodo) insertar altura)

(struct nodo (valor izq der) #:transparent)

(define (insertar arbol valor)
  (cond
    [(null? arbol) (nodo valor '() '())]
    [(< valor (nodo-valor arbol))
     (nodo (nodo-valor arbol) (insertar (nodo-izq arbol) valor) (nodo-der arbol))]
    [else
     (nodo (nodo-valor arbol) (nodo-izq arbol) (insertar (nodo-der arbol) valor))]))

;; TODO: reemplaza el cuerpo de la función.
(define (altura arbol)
  (error "TODO: implementa altura en 2.7-arboles-ejercicio1.rkt"))
