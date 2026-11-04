module Ejercicio3 (aplicarNVeces) where

-- Caso base: cero aplicaciones -> devuelve x sin tocar.
aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces 0 f x = x

-- Caso recursivo: aplica f una vez y repite n-1 veces.
aplicarNVeces n f x = f (aplicarNVeces (n - 1) f x)