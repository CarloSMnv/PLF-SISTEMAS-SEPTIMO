-- Ejercicio 1 (fácil) — Tema 2.2: El tipo de datos
-- Calcula la distancia de un punto al origen (0,0).
module Ejercicio1 (Punto (..), distanciaOrigen) where

data Punto = Punto { px :: Double, py :: Double } deriving (Show, Eq)

distanciaOrigen :: Punto -> Double
distanciaOrigen (Punto x y) = sqrt (x * x + y * y)
