
-- Ejercicio 2 (medio) — Tema 2.2: El tipo de datos
--
-- Calcula el área de un círculo o rectángulo
-- utilizando pattern matching.

module Ejercicio2 (Forma (..), area) where

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show, Eq)

-- Calcula el área según la figura
area :: Forma -> Double
area (Circulo radio) = pi * radio ^ 2
area (Rectangulo base altura) = base * altura
