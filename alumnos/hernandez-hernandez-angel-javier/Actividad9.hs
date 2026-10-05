module Ejercicio3 (aplicarNVeces) where

aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces 0 _ x = x                     -- caso base: aplicar 0 veces
aplicarNVeces n f x = aplicarNVeces (n-1) f (f x)
