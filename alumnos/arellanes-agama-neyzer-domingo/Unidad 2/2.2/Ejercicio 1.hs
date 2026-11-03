
module Ejercicio1 (Punto (..), distanciaOrigen) where

data Punto = Punto { px :: Double, py :: Double } deriving (Show, Eq)

distanciaOrigen :: Punto -> Double
distanciaOrigen p = sqrt (px p ** 2 + py p ** 2)

main :: IO ()
main = do
    print (distanciaOrigen (Punto 3 4))
    -- Resultado esperado: 5.0
