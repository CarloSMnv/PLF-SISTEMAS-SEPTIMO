
-- Ejercicio 3 (más difícil) — Tema 2.3: Funciones
--
-- Si el valor cumple la condicion, aplica la funcion.
-- Si no cumple, devuelve el valor original.
--
-- Ejemplo: aplicarSiCumple even (*2) 4 == 8
--          aplicarSiCumple even (*2) 3 == 3

module Ejercicio3 (aplicarSiCumple) where

aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x =
  if pred x
    then f x
    else x
