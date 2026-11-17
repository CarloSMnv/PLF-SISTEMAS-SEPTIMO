
--Tema 2.3: Funciones
--
-- Implementa componer, que recibe dos funciones f y g
-- y regresa una función nueva que aplica primero g y luego f.
--
-- Ejemplo:
-- componer (*2) (+3) 5 == 16

module Ejercicio2 (componer) where

-- Función que compone dos funciones.
componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)
