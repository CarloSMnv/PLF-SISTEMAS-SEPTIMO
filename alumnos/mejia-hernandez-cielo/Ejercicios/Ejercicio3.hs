module Ejercicio3 (aplicarNVeces) where

aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces n f x
  | n <= 0    = x
  | otherwise = aplicarNVeces (n - 1) f (f x)