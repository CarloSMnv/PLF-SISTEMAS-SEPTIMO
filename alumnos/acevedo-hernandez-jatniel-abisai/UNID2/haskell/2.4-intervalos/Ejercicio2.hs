
-- Ejercicio 2 (medio) — Tema 2.4: Intervalos
--
-- Genera una lista de multiplos de n
-- desde n hasta limite.
--
-- Ejemplo: multiplosDe 3 15 == [3,6,9,12,15]

module Ejercicio2 (multiplosDe) where

multiplosDe :: Int -> Int -> [Int]
multiplosDe n limite = [n, 2*n .. limite]
