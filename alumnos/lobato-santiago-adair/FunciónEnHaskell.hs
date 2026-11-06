-- ============================================================
-- 2.3 Funciones
-- Ideas clave: lambda, currying / aplicación parcial, orden superior, composición
-- ============================================================

-- --- 3. Funciones de orden superior --------------------------------
aplicar :: (a -> b) -> a -> b
aplicar f x = f x

-- --- 4. Composición de funciones ------------------------------------
-- Haskell ya trae el operador (.) para esto; aquí lo usamos directo.
incrementarYDuplicar :: Int -> Int
incrementarYDuplicar = (* 2) . (+ 1)

main :: IO ()
main = do
  -- --- 1. Lambda ------------------------------------------------
  putStrLn "-- Lambda --"
  print ((\x -> x * 2) 5)  -- 10

  -- --- 2. Currying / aplicación parcial -----------------------------
  -- En Haskell TODAS las funciones ya están currificadas por defecto:
  -- `sumar :: Int -> Int -> Int` es en realidad `Int -> (Int -> Int)`.
  putStrLn ""
  putStrLn "-- Currying / aplicación parcial --"
  let sumar :: Int -> Int -> Int
      sumar a b = a + b
      sumar5 = sumar 5  -- aplicación parcial: nos falta un argumento
  print (sumar 3 4)  -- 7
  print (sumar5 10)  -- 15

  putStrLn ""
  putStrLn "-- Orden superior --"
  print (aplicar (\x -> x * x) 6)  -- 36
  print (aplicar sqrt (16 :: Double))  -- 4.0

  putStrLn ""
  putStrLn "-- Composición --"
  print (incrementarYDuplicar 5)  -- (5+1)*2 = 12

-- Salida esperada al ejecutar `runghc 2.3-funciones.hs`:
-- -- Lambda --
-- 10
--
-- -- Currying / aplicación parcial --
-- 7
-- 15
--
-- -- Orden superior --
-- 36
-- 4.0
--
-- -- Composición --
-- 12