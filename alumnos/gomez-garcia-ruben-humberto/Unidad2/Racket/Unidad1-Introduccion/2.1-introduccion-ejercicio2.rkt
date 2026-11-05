#lang racket

;; Ejercicio 2 (medio) — Tema 2.1: Introducción al modelo funcional
;;
;; Implementa `agregar-al-final`, que regresa una lista NUEVA con el
;; elemento agregado al final, sin modificar la lista original
;; (recuerda: en el estilo funcional las listas son inmutables).
;; Ejemplo: (agregar-al-final '(1 2 3) 4) debe dar '(1 2 3 4)

(provide agregar-al-final)

;; TODO: reemplaza el cuerpo de la función.
(define (agregar-al-final lst elemento)
  (cond
    [(empty? lst) (list elemento)]
    [else (cons (first lst)
                (agregar-al-final (rest lst) elemento))]))
