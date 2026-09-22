main :: IO ()
main = do 
  putStrLn "¡Hola, mundo funcional!"
  print (doble 21)

doble x = x * 2
