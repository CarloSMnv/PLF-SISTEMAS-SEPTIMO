module Ejercicio2 (componer) where

-- TODO: reemplaza el cuerpo de la función.
componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)