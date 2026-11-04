-- ============================================================
-- 2.7 Árboles
-- Ideas clave: árbol binario de búsqueda (ABB), insertar, buscar,
-- recorridos (inorden/preorden/postorden), fold sobre árboles
-- ============================================================

-- El árbol es un tipo algebraico: o es una Hoja (vacío) o un Nodo con
-- un valor y dos subárboles.
data Arbol a
  = Hoja
  | Nodo (Arbol a) a (Arbol a)
  deriving (Show)

-- --- 1. Insertar (manteniendo la propiedad de ABB) ------------------------
insertar :: Ord a => Arbol a -> a -> Arbol a
insertar Hoja valor = Nodo Hoja valor Hoja
insertar (Nodo izq v der) valor
  | valor < v = Nodo (insertar izq valor) v der
  | otherwise = Nodo izq v (insertar der valor)

arbol :: Arbol Int
arbol = foldl insertar Hoja [5, 3, 8, 1, 4, 7, 9]

-- --- 2. Buscar -------------------------------------------------------------
pertenece :: Ord a => Arbol a -> a -> Bool
pertenece Hoja _ = False
pertenece (Nodo izq v der) valor
  | valor == v = True
  | valor < v = pertenece izq valor
  | otherwise = pertenece der valor

-- --- 3. Recorridos -----------------------------------------------------------
inorden :: Arbol a -> [a]
inorden Hoja = []
inorden (Nodo izq v der) = inorden izq ++ [v] ++ inorden der

preorden :: Arbol a -> [a]
preorden Hoja = []
preorden (Nodo izq v der) = [v] ++ preorden izq ++ preorden der

postorden :: Arbol a -> [a]
postorden Hoja = []
postorden (Nodo izq v der) = postorden izq ++ postorden der ++ [v]

-- --- 4. Fold sobre árboles -----------------------------------------------------
-- Generaliza los recorridos: combina cada valor con el resultado de
-- "doblar" sus dos subárboles.
foldArbol :: (a -> b -> b -> b) -> b -> Arbol a -> b
foldArbol _ valorBase Hoja = valorBase
foldArbol f valorBase (Nodo izq v der) =
  f v (foldArbol f valorBase izq) (foldArbol f valorBase der)

main :: IO ()
main = do
  putStrLn "-- Buscar --"
  print (pertenece arbol 7)    -- True
  print (pertenece arbol 100)  -- False

  putStrLn ""
  putStrLn "-- Recorridos --"
  print (inorden arbol)    -- [1,3,4,5,7,8,9]  : ¡en un ABB, inorden siempre da orden ascendente!
  print (preorden arbol)   -- [5,3,1,4,8,7,9]
  print (postorden arbol)  -- [1,4,3,7,9,8,5]

  putStrLn ""
  putStrLn "-- Fold sobre árboles --"
  print (foldArbol (\v izq der -> v + izq + der) 0 arbol)  -- 37 : suma de todos los valores
  print (foldArbol (\_ izq der -> 1 + izq + der) 0 arbol)  -- 7  : cuenta los nodos

-- Salida esperada al ejecutar `runghc 2.7-arboles.hs`:
-- -- Buscar --
-- True
-- False
--
-- -- Recorridos --
-- [1,3,4,5,7,8,9]
-- [5,3,1,4,8,7,9]
-- [1,4,3,7,9,8,5]
--
-- -- Fold sobre árboles --
-- 37
-- 7
