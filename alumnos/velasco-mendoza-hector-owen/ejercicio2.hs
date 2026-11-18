
module Ejercicio2 (componer) where

-- Aplica primero g y despues f
componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)
