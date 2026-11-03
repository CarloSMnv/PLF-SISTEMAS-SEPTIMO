#lang racket

(provide aplicar-n-veces)

(define (aplicar-n-veces-basica n f x)
  (cond
    [(<= n 0) x]
    [else (aplicar-n-veces-basica (sub1 n) f (f x))]))

(define (aplicar-n-veces-optima n f x)
  (for/fold ([acumulado x])
            ([i (in-range (max 0 n))])
    (f acumulado)))

(define (aplicar-n-veces n f x)
  (aplicar-n-veces-optima n f x))

(define (verificar nombre esperado obtenido)
  (if (equal? esperado obtenido)
      (printf "OK ~a\n" nombre)
      (error 'prueba "FALLA ~a: esperado ~a, obtenido ~a" nombre esperado obtenido)))

(verificar "basica 3 (*2) 1" 8 (aplicar-n-veces-basica 3 (lambda (x) (* x 2)) 1))
(verificar "optima 3 (*2) 1" 8 (aplicar-n-veces-optima 3 (lambda (x) (* x 2)) 1))
(verificar "basica 0 (*2) 5" 5 (aplicar-n-veces-basica 0 (lambda (x) (* x 2)) 5))
(verificar "optima 0 (*2) 5" 5 (aplicar-n-veces-optima 0 (lambda (x) (* x 2)) 5))
(verificar "basica -2 (*2) 5" 5 (aplicar-n-veces-basica -2 (lambda (x) (* x 2)) 5))
(verificar "optima -2 (*2) 5" 5 (aplicar-n-veces-optima -2 (lambda (x) (* x 2)) 5))
(verificar "basica 5 (+1) 0" 5 (aplicar-n-veces-basica 5 add1 0))
(verificar "optima 5 (+1) 0" 5 (aplicar-n-veces-optima 5 add1 0))
(verificar "basica 3 reverse" '(1 2 3) (aplicar-n-veces-basica 3 reverse '(3 2 1)))
(verificar "optima 3 reverse" '(1 2 3) (aplicar-n-veces-optima 3 reverse '(3 2 1)))
(verificar "aplicar-n-veces = optima" (aplicar-n-veces-optima 4 (lambda (x) (* 3 x)) 2) (aplicar-n-veces 4 (lambda (x) (* 3 x)) 2))
