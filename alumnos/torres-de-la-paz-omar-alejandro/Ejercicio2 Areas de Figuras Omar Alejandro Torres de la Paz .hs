-- Ejercicio 2 (medio) — Tema 2.2: El tipo de datos
-- Calcula el área de un círculo o un rectángulo usando pattern matching.
module Ejercicio2 (Forma (..), area) where

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show, Eq)

area :: Forma -> Double
area (Circulo radio) = pi * radio * radio
area (Rectangulo base altura) = base * altura
