module Ejercicio3 (aplicarSiCumple) where

-- Definimos el tipo de la función
aplicarSiCumple :: (a -> Bool) -> (a -> a) -> a -> a

-- Verificamos si el valor cumple la condición
aplicarSiCumple pred f x =
    if pred x
        then f x  -- Si es True, aplica la función
        else x    -- Si es False, devuelve el mismo valor