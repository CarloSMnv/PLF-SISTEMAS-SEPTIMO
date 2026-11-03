-- Ejercicio 3 (más difícil) — Tema 2.2: El tipo de datos
-- Regresa la forma con mayor área. En caso de empate, devuelve la primera.
module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2
  | area forma1 >= area forma2 = forma1
  | otherwise = forma2
