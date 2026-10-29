-- Ejercicio 2 (medio) — Tema 2.1: Introducción al modelo funcional
-- Alumno: Jose Adrian Ibarra Melo
--
-- Implementa `agregarAlFinal`, que regresa una lista NUEVA con el
-- elemento agregado al final, sin modificar la lista original.
-- Ejemplo: agregarAlFinal [1,2,3] 4  ==  [1,2,3,4]
module Ejercicio2 (agregarAlFinal) where

-- Caso base: en una lista vacía, el elemento queda como único valor.
-- Caso recursivo: se conserva la cabeza y se agrega el elemento
-- al final de la cola. La lista original nunca se modifica.
agregarAlFinal :: [Int] -> Int -> [Int]
agregarAlFinal [] elemento = [elemento]
agregarAlFinal (x : xs) elemento = x : agregarAlFinal xs elemento
