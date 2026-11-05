module Ejercicio2 (componer) where

componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)

main :: IO ()
main = do
    print (componer (*2) (+3) 5)
    -- Resultado esperado: 16