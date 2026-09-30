-- Ejercicio 2 (medio) — Tema 2.7: Árboles
--
-- Se te da el tipo `Arbol` y la función `insertar` ya lista.
-- Implementa `contarNodos`, que cuenta cuántos nodos tiene el árbol.
-- Ejemplo: contarNodos (insertar (insertar (insertar Hoja 5) 3) 8)  ==  3
module Ejercicio2 (Arbol (..), insertar, contarNodos) where

data Arbol a = Hoja | Nodo (Arbol a) a (Arbol a) deriving (Show)

insertar :: Ord a => Arbol a -> a -> Arbol a
insertar Hoja valor = Nodo Hoja valor Hoja
insertar (Nodo izq v der) valor
  | valor < v = Nodo (insertar izq valor) v der
  | otherwise = Nodo izq v (insertar der valor)

-- TODO: reemplaza el cuerpo de la función.
contarNodos :: Arbol a -> Int
contarNodos arbol = error "TODO: implementa contarNodos en Ejercicio2.hs"
