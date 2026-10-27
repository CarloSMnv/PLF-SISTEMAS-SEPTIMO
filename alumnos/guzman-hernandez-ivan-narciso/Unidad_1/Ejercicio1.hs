-- Definición del módulo: se llama Ejercicio1 y exporta (hace pública) la función 'triple'
module Ejercicio1 (triple) where

-- Firma de tipo (Type signature):
-- Indica que la función 'triple' recibe un número entero (Int) 
-- y devuelve otro número entero (Int).
triple :: Int -> Int

-- Definición de la función:
-- 'x' es el parámetro o variable de entrada.
-- El signo '=' separa lo que recibe de lo que hace.
-- 'x * 3' es la operación. 
-- Al ser una función pura, siempre devolverá el mismo resultado para el mismo 'x'
-- y no causará ningún efecto secundario (como leer archivos o imprimir en consola).
triple x = x * 3