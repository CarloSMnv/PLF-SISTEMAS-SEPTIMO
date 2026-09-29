-- Ejercicio 1 (fácil) — Tema 2.1: Introducción al modelo funcional
--
-- Implementa `triple`, una función PURA que regresa el triple de un número.
-- Ejemplo: triple 4  ==  12

module Ejercicio1 (triple) where
main :: IO ()
main = do
  putStrLn "Triple de 4: "
  print (triple 4)
-- TODO: reemplaza el cuerpo de la función.
triple :: Int -> Int
triple x = 4 * x