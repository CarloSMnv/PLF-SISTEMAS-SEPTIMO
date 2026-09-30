-- ============================================================
-- 2.6 Aplicaciones de las listas
-- Ideas clave: map, filter, foldr/foldl, comprensión de listas,
-- zip, take/drop, quicksort funcional
-- ============================================================

numeros :: [Int]
numeros = [5, 2, 8, 1, 9, 3]

-- --- 7. Quicksort funcional ------------------------------------------
-- Divide y vencerás: menores que el pivote + pivote + mayores o iguales,
-- cada parte ordenada recursivamente. Sin variables mutables, sin ciclos.
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (pivote : resto) =
  quicksort [x | x <- resto, x < pivote]
    ++ [pivote]
    ++ quicksort [x | x <- resto, x >= pivote]

main :: IO ()
main = do
  -- --- 1. map: transforma cada elemento --------------------------------
  putStrLn "-- map --"
  print (map (* 2) numeros)  -- [10,4,16,2,18,6]

  -- --- 2. filter: se queda con los que cumplen un predicado --------------
  putStrLn ""
  putStrLn "-- filter --"
  print (filter even numeros)  -- [2,8]

  -- --- 3. foldr / foldl -------------------------------------------------
  putStrLn ""
  putStrLn "-- foldr / foldl --"
  print (foldr (+) 0 numeros)              -- 28
  print (foldr (:) [] [1, 2, 3 :: Int])    -- [1,2,3] : reconstruye la lista
  print (foldl (flip (:)) [] [1, 2, 3 :: Int])  -- [3,2,1] : invierte

  -- --- 4. Comprensión de listas ------------------------------------------
  putStrLn ""
  putStrLn "-- Comprensión de listas --"
  print [x * 10 | x <- numeros, even x]  -- [20,80]

  -- --- 5. zip --------------------------------------------------------------
  putStrLn ""
  putStrLn "-- zip --"
  print (zip [1, 2, 3 :: Int] "abc")  -- [(1,'a'),(2,'b'),(3,'c')]

  -- --- 6. take / drop --------------------------------------------------------
  putStrLn ""
  putStrLn "-- take / drop --"
  print (take 3 numeros)  -- [5,2,8]
  print (drop 3 numeros)  -- [1,9,3]

  -- --- 7. Quicksort funcional ------------------------------------------------
  putStrLn ""
  putStrLn "-- Quicksort funcional --"
  print (quicksort numeros)  -- [1,2,3,5,8,9]

-- Salida esperada al ejecutar `runghc 2.6-listas.hs`:
-- -- map --
-- [10,4,16,2,18,6]
--
-- -- filter --
-- [2,8]
--
-- -- foldr / foldl --
-- 28
-- [1,2,3]
-- [3,2,1]
--
-- -- Comprensión de listas --
-- [20,80]
--
-- -- zip --
-- [(1,'a'),(2,'b'),(3,'c')]
--
-- -- take / drop --
-- [5,2,8]
-- [1,9,3]
--
-- -- Quicksort funcional --
-- [1,2,3,5,8,9]
