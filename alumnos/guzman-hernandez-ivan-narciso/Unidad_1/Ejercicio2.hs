-- Ejercicio 2 (medio) — Tema 2.1: Introducción al modelo funcional
--
-- Implementa `agregarAlFinal`, que regresa una lista NUEVA con el
-- elemento agregado al final, sin modificar la lista original
-- (en Haskell las listas siempre son inmutables: esto ya viene gratis,
-- el reto es escribir la recursión correctamente).
-- Ejemplo: agregarAlFinal [1,2,3] 4  ==  [1,2,3,4]
module Ejercicio2 (agregarAlFinal) where

-- Agrega un elemento al final de una lista usando recursión
agregarAlFinal :: [Int] -> Int -> [Int]
agregarAlFinal [] elemento = [elemento]
agregarAlFinal (x:xs) elemento = x : agregarAlFinal xs elemento