
-- Ejercicio 3 (más difícil) — Tema 2.4: Intervalos
--
-- Genera los primeros n numeros pares no negativos
-- utilizando un rango infinito y la funcion take.
--
-- Ejemplo: primerosNPares 4 == [0,2,4,6]

module Ejercicio3 (primerosNPares) where

primerosNPares :: Int -> [Int]
primerosNPares n = take n [0,2..]
