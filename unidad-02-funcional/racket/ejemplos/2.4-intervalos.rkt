#lang racket

;; ============================================================
;; 2.4 Intervalos
;; Ideas clave: generar rangos de valores sin escribirlos uno por uno
;; ============================================================

;; --- 1. range: genera una lista de números en un intervalo -----------
;; (range fin) -> desde 0 hasta fin (sin incluirlo)
;; (range inicio fin) -> desde inicio hasta fin (sin incluirlo)
;; (range inicio fin paso) -> con paso distinto de 1
(displayln "-- range --")
(displayln (range 5))          ; (0 1 2 3 4)
(displayln (range 1 11))       ; (1 2 3 ... 10)
(displayln (range 1 10 3))     ; (1 4 7)

;; --- 2. build-list: genera una lista aplicando una función a cada índice --
;; Es más general que range: útil cuando el "intervalo" no es solo números.
(displayln "\n-- build-list --")
(displayln (build-list 5 (lambda (i) (* i i))))  ; (0 1 4 9 16)

;; --- 3. in-range: como range, pero perezoso (para usar en for/ciclos) ------
;; No construye la lista completa en memoria; genera valores uno a uno.
(displayln "\n-- in-range dentro de for/list --")
(displayln (for/list ([i (in-range 1 6)]) (* i 10)))  ; (10 20 30 40 50)

;; Salida esperada al ejecutar `racket 2.4-intervalos.rkt`:
;; -- range --
;; (0 1 2 3 4)
;; (1 2 3 4 5 6 7 8 9 10)
;; (1 4 7)
;;
;; -- build-list --
;; (0 1 4 9 16)
;;
;; -- in-range dentro de for/list --
;; (10 20 30 40 50)
