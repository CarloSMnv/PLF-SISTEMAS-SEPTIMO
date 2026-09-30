#lang racket
(require racket/stream)

;; ============================================================
;; 2.8 Evaluación perezosa
;; Ideas clave: listas infinitas (streams), take, criba de Eratóstenes
;;
;; Racket, a diferencia de Haskell, evalúa de forma ESTRICTA por
;; defecto: una lista normal '(1 2 3 ...) infinita nunca terminaría de
;; construirse. Para tener secuencias infinitas se usa `racket/stream`:
;; un stream solo calcula cada elemento cuando alguien lo pide.
;; ============================================================

;; --- 1. Stream infinito de naturales -----------------------------------
(define (naturales-desde n)
  (stream-cons n (naturales-desde (+ n 1))))

(displayln "-- Stream infinito + take --")
(displayln (stream->list (stream-take (naturales-desde 0) 5)))  ; (0 1 2 3 4)

;; --- 2. Stream generado de forma corecursiva: Fibonacci perezoso -----------
;; Cada par (a, b) genera el siguiente elemento y el siguiente estado;
;; como es un stream, nada de esto se calcula hasta que se pide con take.
(define (fib-desde a b)
  (stream-cons a (fib-desde b (+ a b))))

(define fibs (fib-desde 0 1))

(displayln "\n-- Fibonacci perezoso --")
(displayln (stream->list (stream-take fibs 10)))  ; (0 1 1 2 3 5 8 13 21 34)

;; --- 3. Criba de Eratóstenes sobre un stream infinito -----------------------
;; Va descartando, de un stream infinito de candidatos, los múltiplos
;; del primer número que encuentra (que siempre es primo).
(define (criba s)
  (define primo (stream-first s))
  (stream-cons
   primo
   (criba (stream-filter (lambda (x) (not (zero? (remainder x primo)))) (stream-rest s)))))

(define primos (criba (naturales-desde 2)))

(displayln "\n-- Criba de Eratóstenes --")
(displayln (stream->list (stream-take primos 10)))  ; (2 3 5 7 11 13 17 19 23 29)

;; Salida esperada al ejecutar `racket 2.8-perezosa.rkt`:
;; -- Stream infinito + take --
;; (0 1 2 3 4)
;;
;; -- Fibonacci perezoso --
;; (0 1 1 2 3 5 8 13 21 34)
;;
;; -- Criba de Eratóstenes --
;; (2 3 5 7 11 13 17 19 23 29)
