 — Tema 2.3: Funciones
--
-- Implementa aplicarSiCumple, una función de orden superior
-- que recibe un predicado, una función y un valor.
--
-- Si (pred x) es True, regresa (f x).
-- Si es False, regresa x sin cambios.
--
-- Ejemplos:
-- aplicarSiCumple even (*2) 4 == 8
-- aplicarSiCumple even (*2) 3 == 3

module Ejercicio3 (aplicarSiCumple) where

-- Función que aplica otra función si se cumple una condición.
aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x =
    if pred x
        then f x
        else x
