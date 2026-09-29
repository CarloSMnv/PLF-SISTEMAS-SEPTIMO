-- ============================================================
-- 2.5 Operadores
-- Ideas clave: los operadores son funciones normales, se pueden "seccionar"
-- (aplicación parcial) y se pueden definir operadores propios
-- ============================================================

-- --- 3. Definir un operador propio -------------------------------
-- En Haskell SÍ se pueden definir operadores infijos de verdad,
-- usando solo símbolos como nombre. `|>` es un operador de "tubería":
-- aplica x a la función f (se lee de izquierda a derecha).
infixl 1 |>

(|>) :: a -> (a -> b) -> b
x |> f = f x

main :: IO ()
main = do
  -- --- 1. Los operadores son funciones (con paréntesis) ---------------
  putStrLn "-- Operadores como funciones --"
  print ((+) 1 2)              -- 3 : (+) es la misma función que "+"
  print (foldr (+) 0 [1, 2, 3, 4])  -- 10 : se le puede pasar a foldr como cualquier función
  print (zipWith (+) [1, 2, 3] [10, 20, 30])  -- [11,22,33]

  -- --- 2. Secciones: aplicación parcial de un operador -------------------
  -- (+10) fija el segundo argumento; (10-) fija el primero.
  putStrLn ""
  putStrLn "-- Secciones --"
  let sumarDiez = (+ 10)
      restarDeCien = (100 -)
  print (sumarDiez 5)       -- 15
  print (restarDeCien 30)   -- 70

  -- --- 3. Operador propio -------------------------------------------
  putStrLn ""
  putStrLn "-- Operador propio (tubería |>) --"
  print (5 |> (+ 1) |> (* 2))  -- (5+1)*2 = 12

-- Salida esperada al ejecutar `runghc 2.5-operadores.hs`:
-- -- Operadores como funciones --
-- 3
-- 10
-- [11,22,33]
--
-- -- Secciones --
-- 15
-- 70
--
-- -- Operador propio (tubería |>) --
-- 12
