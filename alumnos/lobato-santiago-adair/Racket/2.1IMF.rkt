#lang racket
 
;; 2.1 Introducción al modelo funcional (versión alternativa)
 
;; Función pura
(define (cuadrado x) (sqr x))
 
(displayln "-- Función pura y transparencia referencial --")
(displayln (* 2 (cuadrado 5)))  ; 50
(displayln (+ 25 25))           ; 50
 
;; Función impura: el estado queda encerrado en una clausura (sin variable global)
(define siguiente!
  (let ([n 0])
    (λ () (set! n (add1 n)) n)))
 
(displayln "\n-- Función impura (con estado mutable) --")
(displayln (siguiente!))  ; 1
(displayln (siguiente!))  ; 2
 
;; Inmutabilidad: list* construye una lista nueva sin tocar la original
(define lista-original '(1 2 3))
(define lista-nueva (list* 0 lista-original))
 
(displayln "\n-- Inmutabilidad --")
(for-each displayln (list lista-original lista-nueva))
 