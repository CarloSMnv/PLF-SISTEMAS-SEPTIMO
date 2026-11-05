

module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2
    | area forma1 >= area forma2 = forma1
    | otherwise = forma2

main :: IO ()
main = do
    print (mayorArea (Circulo 1) (Rectangulo 3 5))
    -- Resultado esperado: Rectangulo 3.0 5.0
