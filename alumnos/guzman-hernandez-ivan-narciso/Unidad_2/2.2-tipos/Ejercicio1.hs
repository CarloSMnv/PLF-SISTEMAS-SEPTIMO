-- Ejercicio 1 (fácil) — Tema 2.2: El tipo de datos
--
-- Se te da el tipo `Punto` (tipo compuesto/record). Implementa
-- `distanciaOrigen`, que regresa la distancia de un punto al origen (0,0).
-- Ejemplo: distanciaOrigen (Punto 3 4)  ==  5.0
module Ejercicio1 (Punto (..), distanciaOrigen) where

data Punto = Punto { px :: Double, py :: Double } deriving (Show, Eq)

distanciaOrigen :: Punto -> Double
distanciaOrigen p = sqrt (px p * px p + py p * py p)