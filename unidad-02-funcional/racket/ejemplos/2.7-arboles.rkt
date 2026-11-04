#lang racket

;; ============================================================
;; 2.7 Árboles
;; Ideas clave: árbol binario de búsqueda (ABB), insertar, buscar,
;; recorridos (inorden/preorden/postorden), fold sobre árboles
;; ============================================================

;; Representación: el árbol vacío es '(); un nodo es un struct con
;; valor, subárbol izquierdo y subárbol derecho.
(struct nodo (valor izq der) #:transparent)

;; --- 1. Insertar (manteniendo la propiedad de ABB: izq < valor <= der) ---
(define (insertar arbol valor)
  (cond
    [(null? arbol) (nodo valor '() '())]
    [(< valor (nodo-valor arbol))
     (nodo (nodo-valor arbol) (insertar (nodo-izq arbol) valor) (nodo-der arbol))]
    [else
     (nodo (nodo-valor arbol) (nodo-izq arbol) (insertar (nodo-der arbol) valor))]))

;; Construimos un árbol insertando varios valores.
(define arbol
  (foldl (lambda (v a) (insertar a v)) '() '(5 3 8 1 4 7 9)))

;; --- 2. Buscar ------------------------------------------------------------
(define (pertenece? arbol valor)
  (cond
    [(null? arbol) #f]
    [(= valor (nodo-valor arbol)) #t]
    [(< valor (nodo-valor arbol)) (pertenece? (nodo-izq arbol) valor)]
    [else (pertenece? (nodo-der arbol) valor)]))

(displayln "-- Buscar --")
(displayln (pertenece? arbol 7))   ; #t
(displayln (pertenece? arbol 100)) ; #f

;; --- 3. Recorridos ---------------------------------------------------------
(define (inorden arbol)
  (if (null? arbol)
      '()
      (append (inorden (nodo-izq arbol)) (list (nodo-valor arbol)) (inorden (nodo-der arbol)))))

(define (preorden arbol)
  (if (null? arbol)
      '()
      (append (list (nodo-valor arbol)) (preorden (nodo-izq arbol)) (preorden (nodo-der arbol)))))

(define (postorden arbol)
  (if (null? arbol)
      '()
      (append (postorden (nodo-izq arbol)) (postorden (nodo-der arbol)) (list (nodo-valor arbol)))))

(displayln "\n-- Recorridos --")
(displayln (inorden arbol))    ; (1 3 4 5 7 8 9) : ¡en un ABB, inorden siempre da orden ascendente!
(displayln (preorden arbol))   ; (5 3 1 4 8 7 9)
(displayln (postorden arbol))  ; (1 4 3 7 9 8 5)

;; --- 4. Fold sobre árboles ---------------------------------------------------
;; Generaliza los recorridos: combina cada valor con el resultado de
;; "doblar" (fold) sus dos subárboles.
(define (fold-arbol f valor-base arbol)
  (if (null? arbol)
      valor-base
      (f (nodo-valor arbol)
         (fold-arbol f valor-base (nodo-izq arbol))
         (fold-arbol f valor-base (nodo-der arbol)))))

(displayln "\n-- Fold sobre árboles --")
(displayln (fold-arbol (lambda (v izq der) (+ v izq der)) 0 arbol))         ; 37 : suma de todos los valores
(displayln (fold-arbol (lambda (v izq der) (+ 1 izq der)) 0 arbol))         ; 7  : cuenta los nodos

;; Salida esperada al ejecutar `racket 2.7-arboles.rkt`:
;; -- Buscar --
;; #t
;; #f
;;
;; -- Recorridos --
;; (1 3 4 5 7 8 9)
;; (5 3 1 4 8 7 9)
;; (1 4 3 7 9 8 5)
;;
;; -- Fold sobre árboles --
;; 37
;; 7
