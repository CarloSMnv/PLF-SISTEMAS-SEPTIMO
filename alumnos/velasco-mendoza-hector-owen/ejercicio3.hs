
module Ejercicio3 (aplicarSiCumple) where

-- Aplica una funcion solo si cumple la condicion
aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a
aplicarSiCumple pred f x =
    if pred x
    then f x
    else x
