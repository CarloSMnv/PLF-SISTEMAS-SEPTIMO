aplicar :: (a -> b) -> a -> b
aplicar f x = f x

-- Composición de funciones
incrementarYDuplicar :: Int -> Int
incrementarYDuplicar = (* 2) . (+ 1)

main :: IO ()
main = do

  -- Lambda
  putStrLn "-- Lambda --"
  print ((\x -> x * 2) 5)

  putStrLn ""

  -- Currying / aplicación parcial
  putStrLn "-- Currying / aplicación parcial --"

  let sumar :: Int -> Int -> Int
      sumar a b = a + b

      sumar5 = sumar 5

  print (sumar 3 4)
  print (sumar5 10)

  putStrLn ""

  -- Orden superior
  putStrLn "-- Orden superior --"

  print (aplicar (\x -> x * x) 6)
  print (aplicar sqrt (16 :: Double))

  putStrLn ""

  -- Composición
  putStrLn "-- Composición --"

  print (incrementarYDuplicar 5)