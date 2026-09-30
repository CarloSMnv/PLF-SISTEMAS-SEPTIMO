-- Ejercicio 1 (fácil) — Tema 2.7: Árboles
--
-- Se te da el tipo `Arbol` y la función `insertar` ya lista.
-- Implementa `altura`, que regresa la altura del árbol (número de
-- niveles). El árbol vacío (Hoja) tiene altura 0.
-- Ejemplo: altura (insertar (insertar Hoja 5) 3)  ==  2
module Ejercicio1 (Arbol (..), insertar, altura) where

data Arbol a = Hoja | Nodo (Arbol a) a (Arbol a) deriving (Show)

insertar :: Ord a => Arbol a -> a -> Arbol a
insertar Hoja valor = Nodo Hoja valor Hoja
insertar (Nodo izq v der) valor
  | valor < v = Nodo (insertar izq valor) v der
  | otherwise = Nodo izq v (insertar der valor)

-- TODO: reemplaza el cuerpo de la función.
altura :: Arbol a -> Int
altura arbol = error "TODO: implementa altura en Ejercicio1.hs"
