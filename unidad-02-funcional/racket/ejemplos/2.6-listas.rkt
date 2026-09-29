#lang racket

;; ============================================================
;; 2.6 Aplicaciones de las listas
;; Ideas clave: map, filter, foldr/foldl, comprensión de listas,
;; zip, take/drop, quicksort funcional
;; ============================================================

(define numeros '(5 2 8 1 9 3))

;; --- 1. map: transforma cada elemento --------------------------------
(displayln "-- map --")
(displayln (map (lambda (x) (* x 2)) numeros))  ; (10 4 16 2 18 6)

;; --- 2. filter: se queda con los que cumplen un predicado --------------
(displayln "\n-- filter --")
(displayln (filter even? numeros))  ; (2 8)

;; --- 3. foldr / foldl: reducen una lista a un solo valor -----------------
;; foldr procesa de derecha a izquierda; foldl de izquierda a derecha.
(displayln "\n-- foldr / foldl --")
(displayln (foldr + 0 numeros))              ; 28 (suma)
(displayln (foldr cons '() '(1 2 3)))         ; (1 2 3) : reconstruye la lista
(displayln (foldl (lambda (x acc) (cons x acc)) '() '(1 2 3)))  ; (3 2 1) : invierte

;; --- 4. Comprensión de listas (for/list) --------------------------------
(displayln "\n-- Comprensión de listas --")
(displayln (for/list ([x numeros] #:when (even? x)) (* x 10)))  ; (20 80)

;; --- 5. zip (combinar listas elemento por elemento) ----------------------
(displayln "\n-- zip (con map) --")
(displayln (map cons '(1 2 3) '(a b c)))  ; ((1 . a) (2 . b) (3 . c))

;; --- 6. take / drop ------------------------------------------------------
(displayln "\n-- take / drop --")
(displayln (take numeros 3))  ; (5 2 8)
(displayln (drop numeros 3))  ; (1 9 3)

;; --- 7. Quicksort funcional ------------------------------------------------
;; Divide y vencerás: menores que el pivote + pivote + mayores que el pivote,
;; cada parte ordenada recursivamente. Sin variables mutables, sin ciclos.
(define (quicksort lst)
  (cond
    [(empty? lst) '()]
    [else
     (define pivote (first lst))
     (define resto (rest lst))
     (append
      (quicksort (filter (lambda (x) (< x pivote)) resto))
      (list pivote)
      (quicksort (filter (lambda (x) (>= x pivote)) resto)))]))

(displayln "\n-- Quicksort funcional --")
(displayln (quicksort numeros))  ; (1 2 3 5 8 9)

;; Salida esperada al ejecutar `racket 2.6-listas.rkt`:
;; -- map --
;; (10 4 16 2 18 6)
;;
;; -- filter --
;; (2 8)
;;
;; -- foldr / foldl --
;; 28
;; (1 2 3)
;; (3 2 1)
;;
;; -- Comprensión de listas --
;; (20 80)
;;
;; -- zip (con map) --
;; ((1 . a) (2 . b) (3 . c))
;;
;; -- take / drop --
;; (5 2 8)
;; (1 9 3)
;;
;; -- Quicksort funcional --
;; (1 2 3 5 8 9)
