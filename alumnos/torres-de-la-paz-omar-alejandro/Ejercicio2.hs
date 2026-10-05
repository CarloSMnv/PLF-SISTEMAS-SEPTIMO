module Ejercicio2 (agregarAlFinal) where

-- Agrega un elemento al final de una lista sin modificar la lista original.
agregarAlFinal :: [Int] -> Int -> [Int]
agregarAlFinal [] elemento = [elemento]
agregarAlFinal (x:xs) elemento = x : agregarAlFinal xs elemento
