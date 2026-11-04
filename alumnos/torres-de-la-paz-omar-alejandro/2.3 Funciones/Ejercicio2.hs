-- Ejercicio 2 (medio) — Tema 2.3: Funciones
--
-- Implementa `componer`, que recibe dos funciones `f` y `g` y regresa
-- una función nueva que aplica primero `g` y luego `f` (reimplementa
-- lo que hace el operador (.) de Haskell -- no lo uses, escribe la
-- definición tú mismo/a).
-- Ejemplo: componer (*2) (+3) 5  ==  16   (primero suma 3 -> 8, luego *2 -> 16)
module Ejercicio2 (componer) where

componer :: (b -> c) -> (a -> b) -> a -> c
componer f g x = f (g x)

-- Para ejecutar este archivo solo:  runghc Ejercicio2.hs
main :: IO ()
main = do
  putStrLn ("componer (*2) (+3) 5 = " ++ show (componer (*2) (+3) (5 :: Int)))
  putStrLn ("componer show (+1) 41 = " ++ show (componer show (+1) (41 :: Int)))
