module Ejercicio3 (aplicarSiCumple) where

-- TODO: reemplaza el cuerpo de la función.
aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x
  | pred x    = f x
  | otherwise = x