module Ejercicio2 (componer) where

componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)
