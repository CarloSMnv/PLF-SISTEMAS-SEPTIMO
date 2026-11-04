module Ejercicio2 (componer) where

-- Definimos el tipo de la función
componer :: (b -> c) -> (a -> b) -> a -> c

-- Primero se ejecuta g con x y luego f con el resultado
componer f g x = f (g x)