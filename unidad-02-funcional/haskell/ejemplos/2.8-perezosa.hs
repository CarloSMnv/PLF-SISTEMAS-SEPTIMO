-- ============================================================
-- 2.8 Evaluación perezosa
-- Ideas clave: listas infinitas, take, criba de Eratóstenes
--
-- Haskell SÍ evalúa de forma perezosa por defecto: una lista como
-- [0..] es perfectamente válida, nunca se construye toda de una vez,
-- solo se calcula lo que realmente se pide (por ejemplo, con `take`).
-- ============================================================

-- --- 2. Lista auto-referente: Fibonacci perezoso ---------------------------
-- La magia de la evaluación perezosa: `fibs` se define EN TÉRMINOS DE
-- SÍ MISMA, y funciona porque cada elemento solo se calcula cuando se
-- necesita.
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)

-- --- 3. Criba de Eratóstenes sobre una lista infinita -----------------------
-- Descarta, de una lista infinita de candidatos, los múltiplos del
-- primer número que encuentra (que siempre es primo).
criba :: [Int] -> [Int]
criba (p : xs) = p : criba [x | x <- xs, x `mod` p /= 0]
criba [] = []

primos :: [Int]
primos = criba [2 ..]

main :: IO ()
main = do
  -- --- 1. Lista infinita + take ------------------------------------------
  putStrLn "-- Lista infinita + take --"
  print (take 5 [0 ..])  -- [0,1,2,3,4]

  putStrLn ""
  putStrLn "-- Fibonacci perezoso (auto-referente) --"
  print (take 10 fibs)  -- [0,1,1,2,3,5,8,13,21,34]

  putStrLn ""
  putStrLn "-- Criba de Eratóstenes --"
  print (take 10 primos)  -- [2,3,5,7,11,13,17,19,23,29]

-- Salida esperada al ejecutar `runghc 2.8-perezosa.hs`:
-- -- Lista infinita + take --
-- [0,1,2,3,4]
--
-- -- Fibonacci perezoso (auto-referente) --
-- [0,1,1,2,3,5,8,13,21,34]
--
-- -- Criba de Eratóstenes --
-- [2,3,5,7,11,13,17,19,23,29]
