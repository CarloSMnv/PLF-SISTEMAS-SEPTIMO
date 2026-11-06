#lang racket
 
;; 2.2 El tipo de datos (versión alternativa)
 
(displayln "-- Tipos básicos --")
(displayln '(42 3.14 "hola" #t #\a simbolo))
 
(struct punto (x y) #:transparent)
 
(displayln "\n-- Tipo compuesto: struct --")
(match (punto 3 4)
  [(and p (punto x y))
   (displayln p)
   (displayln x)
   (displayln y)])
 
(struct circulo (radio) #:transparent)
(struct rectangulo (base altura) #:transparent)
 
;; match desestructura cada variante directamente
(define (area forma)
  (match forma
    [(circulo r)       (* pi r r)]
    [(rectangulo b h)  (* b h)]))
 
(displayln "\n-- Tipo algebraico (variantes) --")
(for-each (compose displayln area)
          (list (circulo 2) (rectangulo 3 5)))
 