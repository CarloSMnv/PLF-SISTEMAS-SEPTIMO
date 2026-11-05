module Ejercicio1 (sumarN) where

sumarN :: Int -> Int -> Int
sumarN n x = n + x

main :: IO ()
main = do
    print (sumarN 5 3)
    -- Resultado esperado: 8
