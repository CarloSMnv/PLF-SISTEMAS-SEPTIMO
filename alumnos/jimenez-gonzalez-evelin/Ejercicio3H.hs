
-- Ejercicio 3 (más difícil) — Tema 2.3: Funciones
--
-- Implementa aplicarSiCumple, una función de orden superior
-- que recibe un predicado, una función f y un valor x.

module Ejercicio3 (aplicarSiCumple) where

aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x =
    if pred x
    then f x
    else x
