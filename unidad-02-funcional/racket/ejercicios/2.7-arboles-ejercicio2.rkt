#lang racket

;; Ejercicio 2 (medio) — Tema 2.7: Árboles
;;
;; Se te da el struct `nodo` y una función `insertar` ya lista.
;; Implementa `contar-nodos`, que cuenta cuántos nodos tiene el árbol.
;; Ejemplo: (contar-nodos (insertar (insertar (insertar '() 5) 3) 8)) debe dar 3

(provide (struct-out nodo) insertar contar-nodos)

(struct nodo (valor izq der) #:transparent)

(define (insertar arbol valor)
  (cond
    [(null? arbol) (nodo valor '() '())]
    [(< valor (nodo-valor arbol))
     (nodo (nodo-valor arbol) (insertar (nodo-izq arbol) valor) (nodo-der arbol))]
    [else
     (nodo (nodo-valor arbol) (nodo-izq arbol) (insertar (nodo-der arbol) valor))]))

;; TODO: reemplaza el cuerpo de la función.
(define (contar-nodos arbol)
  (error "TODO: implementa contar-nodos en 2.7-arboles-ejercicio2.rkt"))
