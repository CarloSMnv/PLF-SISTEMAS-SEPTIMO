import Data.IORef

cuadrado :: Int -> Int
cuadrado x = x * x

siguiente :: IORef Int -> IO Int
siguiente ref = do
    n <- readIORef ref
    let n' = n + 1
    writeIORef ref n'
    return n'

main :: IO ()
main = do

    putStrLn "-- Función pura y transparencia referencial --"

    print (cuadrado 5 + cuadrado 5)
    print (25 + 25 :: Int)

    putStrLn ""

    putStrLn "-- Efecto secundario explícito (requiere IO) --"

    contador <- newIORef 0

    a <- siguiente contador
    b <- siguiente contador

    print a
    print b

    putStrLn ""

    putStrLn "-- Inmutabilidad --"

    let listaOriginal = [1, 2, 3] :: [Int]
        listaNueva = 0 : listaOriginal

    print listaOriginal
    print listaNueva