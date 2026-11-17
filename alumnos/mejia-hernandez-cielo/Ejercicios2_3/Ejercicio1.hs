-- Ejercicio 1 (fácil) — Tema 2.3: Funciones
--
-- Implementa `sumarN`, una función currificada: recibe `n` y regresa
-- una función que suma `n` a lo que reciba (aplicación parcial).
-- Ejemplo: sumarN 5 3  ==  8   (equivalente a (sumarN 5) 3)
module Ejercicio1 (sumarN) where

sumarN :: Int -> Int -> Int
sumarN n x = n + x
