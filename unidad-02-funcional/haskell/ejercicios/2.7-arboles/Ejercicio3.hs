-- Ejercicio 3 (más difícil) — Tema 2.7: Árboles
--
-- Se te da el tipo `Arbol` y la función `insertar` ya lista.
-- Implementa `nivelDe`, que busca `valor` en el árbol (ABB) y regresa
-- en qué nivel está (la raíz es nivel 0). Si no está, regresa -1.
-- Ejemplo: en un árbol donde 5 es la raíz y 3 es su hijo izquierdo,
--          nivelDe arbol 5  ==  0   y   nivelDe arbol 3  ==  1
module Ejercicio3 (Arbol (..), insertar, nivelDe) where

data Arbol a = Hoja | Nodo (Arbol a) a (Arbol a) deriving (Show)

insertar :: Ord a => Arbol a -> a -> Arbol a
insertar Hoja valor = Nodo Hoja valor Hoja
insertar (Nodo izq v der) valor
  | valor < v = Nodo (insertar izq valor) v der
  | otherwise = Nodo izq v (insertar der valor)

-- TODO: reemplaza el cuerpo de la función.
nivelDe :: Ord a => Arbol a -> a -> Int
nivelDe arbol valor = error "TODO: implementa nivelDe en Ejercicio3.hs"
