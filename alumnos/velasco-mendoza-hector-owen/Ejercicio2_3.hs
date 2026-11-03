module Ejercicio2_3 (Forma(..), area, mayorArea) where

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show, Eq)

area :: Forma -> Double
area (Circulo radio) = pi * radio ^ 2
area (Rectangulo base altura) = base * altura

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2
  | area forma1 >= area forma2 = forma1
  | otherwise = forma2