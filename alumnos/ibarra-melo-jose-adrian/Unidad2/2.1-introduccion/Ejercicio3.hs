-- Ejercicio 3 (más difícil) — Tema 2.1: Introducción al modelo funcional
-- Alumno: Jose Adrian Ibarra Melo
--
-- Implementa `aplicarNVeces`, que aplica una función pura `f`, `n` veces
-- seguidas, sobre un valor inicial `x`.
-- Ejemplo: aplicarNVeces 3 (*2) 1  ==  8   (1*2*2*2)
module Ejercicio3 (aplicarNVeces) where

-- Caso base: aplicar f cero veces (o menos) regresa el valor sin cambios.
-- Caso recursivo: se aplica f una vez y se repite con n - 1.
aplicarNVeces :: Int -> (a -> a) -> a -> a
aplicarNVeces n f x
  | n <= 0 = x
  | otherwise = aplicarNVeces (n - 1) f (f x)
