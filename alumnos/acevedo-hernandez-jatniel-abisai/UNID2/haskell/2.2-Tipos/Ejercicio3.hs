
-- Ejercicio 3 (más difícil) — Tema 2.2: El tipo de datos
--
-- Compara el área de dos figuras geométricas y
-- devuelve la figura que tiene mayor área.

module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2 =
  if area forma1 >= area forma2
    then forma1
    else forma2
