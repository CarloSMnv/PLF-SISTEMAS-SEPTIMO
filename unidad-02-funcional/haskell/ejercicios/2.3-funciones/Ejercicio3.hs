-- Ejercicio 3 (más difícil) — Tema 2.3: Funciones
--
-- Implementa `aplicarSiCumple`, una función de orden superior que
-- recibe un predicado `pred`, una función `f` y un valor `x`:
-- si (pred x) es True, regresa (f x); si no, regresa x sin cambios.
-- Ejemplo: aplicarSiCumple even (*2) 4  ==  8
--          aplicarSiCumple even (*2) 3  ==  3
module Ejercicio3 (aplicarSiCumple) where

-- TODO: reemplaza el cuerpo de la función.
aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x = error "TODO: implementa aplicarSiCumple en Ejercicio3.hs"
