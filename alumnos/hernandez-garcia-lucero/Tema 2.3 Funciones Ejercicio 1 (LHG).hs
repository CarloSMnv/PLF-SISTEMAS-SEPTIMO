-- Tema 2.3: Funciones
--
-- Implementa sumarN, una función currificada:
-- recibe n y regresa una función que suma n
-- a lo que reciba (aplicación parcial).
--
-- Ejemplo:
-- sumarN 5 3 == 8
-- (sumarN 5) 3 == 8

module Ejercicio1 (sumarN) where

-- Función que suma dos números enteros.
sumarN :: Int -> Int -> Int
sumarN n x = n + x

