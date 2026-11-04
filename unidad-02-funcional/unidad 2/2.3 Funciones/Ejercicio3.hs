module Ejercicio3 (aplicarSiCumple) where

aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x
  | pred x    = f x
  | otherwise = x