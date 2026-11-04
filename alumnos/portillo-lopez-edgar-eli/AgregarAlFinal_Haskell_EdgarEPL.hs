module Ejercicio2 (agregarAlFinal) where

-- Caso base: lista vacía -> lista con el elemento.

agregarAlFinal :: [Int] -> Int -> [Int]
agregarAlFinal [] elemento = [elemento]
-- Caso recursivo: conserva la cabeza y agrega al final de la cola.

agregarAlFinal (x:xs) elemento = x : agregarAlFinal xs elemento