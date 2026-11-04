-- Ejercicio 2 (medio) — Tema 2.3: Funciones
--
-- Implementa `componer`, que recibe dos funciones `f` y `g` y regresa
-- una función nueva que aplica primero `g` y luego `f` (reimplementa
-- lo que hace el operador (.) de Haskell -- no lo uses, escribe la
-- definición tú mismo/a).
-- Ejemplo: componer (*2) (+3) 5  ==  16   (primero suma 3 -> 8, luego *2 -> 16)
module Ejercicio2 (componer) where

-- TODO: reemplaza el cuerpo de la función.
componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = error "TODO: implementa componer en Ejercicio2.hs"
