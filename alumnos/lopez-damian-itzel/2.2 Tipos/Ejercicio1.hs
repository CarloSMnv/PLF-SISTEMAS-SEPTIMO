module Ejercicio1 (Punto (..), distanciaOrigen) where

data Punto = Punto { px :: Double, py :: Double } deriving (Show, Eq)

distanciaOrigen :: Punto -> Double
distanciaOrigen (Punto x y) = sqrt (x * x + y * y)
