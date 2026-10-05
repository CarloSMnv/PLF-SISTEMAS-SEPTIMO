-- Ejercicio 2 (medio) — Tema 2.5: Operadores
--
-- Define tu propio operador infijo `(^^^)` que calcule potencias SIN
-- usar `^`/`^^`/`**`: multiplica `base` por sí misma `exponente` veces,
-- usando recursión.
-- Ejemplo: 2 ^^^ 10  ==  1024
module Ejercicio2 ((^^^)) where

infixr 8 ^^^

-- TODO: reemplaza el cuerpo del operador.
(^^^) :: Int -> Int -> Int
base ^^^ exponente = error "TODO: implementa (^^^) en Ejercicio2.hs"
