module Ejercicio2 (Forma (..), area) where

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show, Eq)

area :: Forma -> Double
area (Circulo r) = pi * r^2
area (Rectangulo b h) = b * h