
-- Ejercicio 1 (fácil) — Tema 2.4: Intervalos
--
-- Suma todos los enteros desde a hasta b,
-- incluyendo ambos extremos.
--
-- Ejemplo: sumaRango 1 5 == 15

module Ejercicio1 (sumaRango) where

sumaRango :: Int -> Int -> Int
sumaRango a b = sum [a..b]
