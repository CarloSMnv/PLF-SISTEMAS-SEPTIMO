-- Ejercicio 1 (fácil) — Tema 2.3: Funciones
--
-- Implementa `sumarN`, una función currificada: recibe `n` y regresa
-- una función que suma `n` a lo que reciba (aplicación parcial).
-- Ejemplo: sumarN 5 3  ==  8   (equivalente a (sumarN 5) 3)
module Ejercicio1 (sumarN) where

sumarN :: Int -> Int -> Int
sumarN n x = n + x

-- Para ejecutar este archivo solo:  runghc Ejercicio1.hs
main :: IO ()
main = do
  putStrLn ("sumarN 5 3 = " ++ show (sumarN 5 3))
  putStrLn ("map (sumarN 2) [1,2,3] = " ++ show (map (sumarN 2) [1, 2, 3]))
