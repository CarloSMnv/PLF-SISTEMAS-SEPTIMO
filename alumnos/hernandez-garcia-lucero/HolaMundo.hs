main :: IO ()
main = do
  putStrLn "¡Hola, mundo_Lucerohg!"
  print (doble 21)

doble :: Int -> Int
doble x = x * 2