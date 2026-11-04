-- Ejercicio 2 (medio) — Tema 2.2: El tipo de datos
-- Alumno: Jose Adrian Ibarra Melo
--
-- Se te da el tipo algebraico `Forma` (sum type: es un Circulo O un
-- Rectangulo). Implementa `area` usando pattern matching sobre las
-- variantes.
-- Ejemplo: area (Circulo 2)       ==  12.566370614359172
--          area (Rectangulo 3 5)  ==  15.0
module Ejercicio2 (Forma (..), area) where

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show, Eq)

-- Una ecuación por cada variante del tipo.
area :: Forma -> Double
area (Circulo r) = pi * r * r
area (Rectangulo base altura) = base * altura
