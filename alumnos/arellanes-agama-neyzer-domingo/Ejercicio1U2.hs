module Ejercicio1 (Punto (..), distanciaOrigen) where

data Punto = Punto { px :: Double, py :: Double }
    deriving (Show, Eq)

distanciaOrigen :: Punto -> Double
distanciaOrigen p =
    sqrt (px p * px p + py p * py p)