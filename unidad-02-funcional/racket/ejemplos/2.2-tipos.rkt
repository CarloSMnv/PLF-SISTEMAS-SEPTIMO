#lang racket

;; ============================================================
;; 2.2 El tipo de datos
;; Ideas clave: tipos básicos, tipos compuestos, tipos algebraicos (struct)
;; ============================================================

;; --- 1. Tipos básicos ------------------------------------------
(displayln "-- Tipos básicos --")
(displayln (list 42 3.14 "hola" #t #\a 'simbolo))
;; número entero, número flotante, string, booleano, carácter, símbolo

;; --- 2. Tipo compuesto (record) con struct -----------------------
;; `struct` crea un tipo de dato nuevo con campos con nombre.
;; #:transparent hace que se pueda imprimir e inspeccionar (útil para depurar).
(struct punto (x y) #:transparent)

(define p (punto 3 4))
(displayln "\n-- Tipo compuesto: struct --")
(displayln p)              ; #(struct:punto 3 4)
(displayln (punto-x p))    ; 3
(displayln (punto-y p))    ; 4

;; --- 3. Tipo algebraico (suma de variantes) ------------------------
;; Racket no tiene "sum types" nativos como Haskell, pero el patrón usual
;; es un struct por variante + `cond`/`match` para distinguirlas.
(struct circulo (radio) #:transparent)
(struct rectangulo (base altura) #:transparent)
;; `forma` es, conceptualmente, circulo O rectangulo.

(define (area forma)
  (cond
    [(circulo? forma) (* pi (sqr (circulo-radio forma)))]
    [(rectangulo? forma) (* (rectangulo-base forma) (rectangulo-altura forma))]))

(displayln "\n-- Tipo algebraico (variantes) --")
(displayln (area (circulo 2)))        ; ~12.566
(displayln (area (rectangulo 3 5)))   ; 15

;; Salida esperada al ejecutar `racket 2.2-tipos.rkt`:
;; -- Tipos básicos --
;; (42 3.14 hola #t a simbolo)
;;
;; -- Tipo compuesto: struct --
;; #(struct:punto 3 4)
;; 3
;; 4
;;
;; -- Tipo algebraico (variantes) --
;; 12.566370614359172
;; 15
