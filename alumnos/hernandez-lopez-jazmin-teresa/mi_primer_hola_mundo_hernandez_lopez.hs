main :: IO ()
main = do
    putStrLn "¡Hola, mundo funcional, en haskell!"
    print (doble 21)
doble :: Int -> Int 
doble x = x * 2