
module Ejercicio1 (Punto (..), distanciaOrigen) where

data Punto = Punto { px :: Double, py :: Double } deriving (Show, Eq)

distanciaOrigen :: Punto -> Double
distanciaOrigen p = sqrt (px p ^ 2 + py p ^ 2)
