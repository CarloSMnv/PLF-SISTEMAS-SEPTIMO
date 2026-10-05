-- Ejercicio 3 (más difícil) — Tema 2.1: Introducción al modelo funcional
--
-- Implementa aplicarNVeces, que aplica una función n veces
-- sobre un valor inicial.

module Ejercicio3 (aplicarNVeces) where

aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces 0 f x = x
aplicarNVeces n f x = aplicarNVeces (n - 1) f (f x)
