-- Ejercicio 3 (más difícil) — Tema 2.2: El tipo de datos
--
-- Usa `area` y `Forma` del ejercicio 2 (debes haberlo resuelto primero).
-- Implementa `mayorArea`, que recibe dos formas y regresa la que tiene
-- mayor área.
-- Ejemplo: mayorArea (Circulo 1) (Rectangulo 3 5)  ==  Rectangulo 3.0 5.0
module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2 =
  if area forma1 > area forma2
    then forma1
    else forma2