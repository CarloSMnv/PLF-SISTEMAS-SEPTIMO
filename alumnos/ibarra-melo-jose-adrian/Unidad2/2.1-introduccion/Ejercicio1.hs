-- Ejercicio 1 (fácil) — Tema 2.1: Introducción al modelo funcional
-- Alumno: Jose Adrian Ibarra Melo
--
-- Implementa `triple`, una función PURA que regresa el triple de un número.
-- Ejemplo: triple 4  ==  12
module Ejercicio1 (triple) where

-- La función solo depende de su argumento: mismo x, mismo resultado.
triple :: Int -> Int
triple x = 3 * x
