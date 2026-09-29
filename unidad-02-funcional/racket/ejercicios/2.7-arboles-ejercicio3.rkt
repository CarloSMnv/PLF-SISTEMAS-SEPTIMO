#lang racket

;; Ejercicio 3 (más difícil) — Tema 2.7: Árboles
;;
;; Se te da el struct `nodo` y una función `insertar` ya lista.
;; Implementa `nivel-de`, que busca `valor` en el árbol (ABB) y regresa
;; en qué nivel está (la raíz es nivel 0). Si no está, regresa -1.
;; Ejemplo: en un árbol donde 5 es la raíz y 3 es su hijo izquierdo,
;;          (nivel-de arbol 5) debe dar 0 y (nivel-de arbol 3) debe dar 1

(provide (struct-out nodo) insertar nivel-de)

(struct nodo (valor izq der) #:transparent)

(define (insertar arbol valor)
  (cond
    [(null? arbol) (nodo valor '() '())]
    [(< valor (nodo-valor arbol))
     (nodo (nodo-valor arbol) (insertar (nodo-izq arbol) valor) (nodo-der arbol))]
    [else
     (nodo (nodo-valor arbol) (nodo-izq arbol) (insertar (nodo-der arbol) valor))]))

;; TODO: reemplaza el cuerpo de la función.
(define (nivel-de arbol valor)
  (error "TODO: implementa nivel-de en 2.7-arboles-ejercicio3.rkt"))
