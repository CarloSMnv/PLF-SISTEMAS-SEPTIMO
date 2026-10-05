-- Ejercicio 2 (medio) — Tema 2.2: El tipo de datos
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

-- TODO: reemplaza el cuerpo de la función (usa pattern matching sobre Forma).
area :: Forma -> Double
area forma = error "TODO: implementa area en Ejercicio2.hs"
