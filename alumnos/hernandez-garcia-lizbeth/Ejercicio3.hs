module Ejercicio3 (aplicarNVeces) where

aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces 0 f x = x
aplicarNVeces n f x = aplicarNVeces (n - 1) f (f x)
