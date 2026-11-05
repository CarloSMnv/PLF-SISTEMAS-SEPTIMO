
-- Ejercicio 2 (medio) — Tema 2.3: Funciones
--
-- Implementa componer, que recibe dos funciones
-- y aplica primero g y despues f.
--
-- Ejemplo: componer (*2) (+3) 5 == 16

module Ejercicio2 (componer) where

componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)
