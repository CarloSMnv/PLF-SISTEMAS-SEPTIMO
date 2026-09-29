-- ============================================================
-- 2.4 Intervalos
-- Ideas clave: generar rangos de valores con la notación [a..b]
-- ============================================================

main :: IO ()
main = do
  -- --- 1. Rango básico [inicio..fin] (inclusivo en ambos extremos) ---
  putStrLn "-- Rango básico --"
  print [0 .. 4]     -- [0,1,2,3,4]
  print [1 .. 10]    -- [1,2,3,4,5,6,7,8,9,10]

  -- --- 2. Rango con paso: [inicio,siguiente..fin] --------------------
  -- Haskell infiere el paso de la diferencia entre los primeros dos.
  putStrLn ""
  putStrLn "-- Rango con paso --"
  print [1, 4 .. 10]  -- [1,4,7,10]

  -- --- 3. Rango infinito (perezoso): solo se genera lo que se pide ----
  -- [1..] es una lista infinita; `take` decide cuánto "materializar".
  putStrLn ""
  putStrLn "-- Rango infinito + take --"
  print (take 5 [1 ..])          -- [1,2,3,4,5]
  print (take 5 [0, 2 ..])       -- [0,2,4,6,8]  (pares, infinito)

-- Salida esperada al ejecutar `runghc 2.4-intervalos.hs`:
-- -- Rango básico --
-- [0,1,2,3,4]
-- [1,2,3,4,5,6,7,8,9,10]
--
-- -- Rango con paso --
-- [1,4,7,10]
--
-- -- Rango infinito + take --
-- [1,2,3,4,5]
-- [0,2,4,6,8]
