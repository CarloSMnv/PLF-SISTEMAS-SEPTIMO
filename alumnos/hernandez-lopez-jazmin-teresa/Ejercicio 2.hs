
module Ejercicio2 (Forma (..), area) where

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show, Eq)

area :: Forma -> Double
area (Circulo radio) = pi * radio ** 2
area (Rectangulo base altura) = base * altura

main :: IO ()
main = do
    print (area (Circulo 2))
    -- Resultado esperado: 12.566370614359172
    print (area (Rectangulo 3 5))
    -- Resultado esperado: 15.0
