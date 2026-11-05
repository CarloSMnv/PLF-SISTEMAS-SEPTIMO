-- Ejercicio 3 (más difícil) — Tema 2.2: El tipo de datos
-- Alumno: Jose Adrian Ibarra Melo
--
-- Usa `area` y `Forma` del ejercicio 2.
-- Implementa `mayorArea`, que recibe dos formas y regresa la que tiene
-- mayor área.
-- Ejemplo: mayorArea (Circulo 1) (Rectangulo 3 5)  ==  Rectangulo 3.0 5.0
module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

-- Compara las áreas y regresa la forma completa (no solo el número).
-- Si las áreas son iguales, regresa la primera.
mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2
  | area forma1 >= area forma2 = forma1
  | otherwise = forma2
