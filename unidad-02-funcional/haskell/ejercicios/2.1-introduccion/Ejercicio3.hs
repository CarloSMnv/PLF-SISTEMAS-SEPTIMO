-- Ejercicio 3 (más difícil) — Tema 2.1: Introducción al modelo funcional
--
-- Implementa `aplicarNVeces`, que aplica una función pura `f`, `n` veces
-- seguidas, sobre un valor inicial `x`. Como f es pura, aplicarla n veces
-- es 100% predecible (transparencia referencial): misma f, mismo n, mismo x
-- -> siempre el mismo resultado.
-- Ejemplo: aplicarNVeces 3 (*2) 1  ==  8   (1*2*2*2)
module Ejercicio3 (aplicarNVeces) where

-- TODO: reemplaza el cuerpo de la función.
aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces n f x = error "TODO: implementa aplicarNVeces en Ejercicio3.hs"
