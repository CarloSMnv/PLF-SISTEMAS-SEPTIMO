aplicar :: (a -> b) -> a -> b
aplicar = ($)
 
-- succ en lugar de (+ 1)
incrementarYDuplicar :: Int -> Int
incrementarYDuplicar = (* 2) . succ
 
-- sumar es el operador (+); la aplicación parcial es directa
sumar :: Int -> Int -> Int
sumar = (+)
 
sumar5 :: Int -> Int
sumar5 = sumar 5
 
main :: IO ()
main = do
  putStrLn "-- Lambda --"
  print $ (\x -> x * 2) 5  -- 10
 
  putStrLn "\n-- Currying / aplicación parcial --"
  mapM_ print [sumar 3 4, sumar5 10]  -- 7, 15
 
  putStrLn "\n-- Orden superior --"
  print (aplicar (^ 2) 6)              -- 36
  print (aplicar sqrt (16 :: Double))  -- 4.0
 
  putStrLn "\n-- Composición --"
  print (incrementarYDuplicar 5)  -- 12
 