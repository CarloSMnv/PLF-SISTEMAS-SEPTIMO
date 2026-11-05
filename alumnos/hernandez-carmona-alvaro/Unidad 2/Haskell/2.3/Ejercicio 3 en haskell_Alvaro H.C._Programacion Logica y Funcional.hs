module Ejercicio3 (aplicarSiCumple) where

aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x =
    if pred x
        then f x
        else x

main :: IO ()
main = do
    print (aplicarSiCumple even (*2) 4)
    -- Resultado esperado: 8

    print (aplicarSiCumple even (*2) 3)
    -- Resultado esperado: 3