import Control.Monad (replicateM)
import Data.IORef
 
-- Función pura: sección de operador en lugar de x * x
cuadrado :: Int -> Int
cuadrado = (^ 2)
 
-- Efecto explícito en IO: modifyIORef' incrementa y luego leemos el valor
siguiente :: IORef Int -> IO Int
siguiente ref = modifyIORef' ref (+ 1) >> readIORef ref
 
main :: IO ()
main = do
  putStrLn "-- Función pura y transparencia referencial --"
  print (2 * cuadrado 5)           -- 50
  print (25 + 25 :: Int)           -- 50
 
  putStrLn "\n-- Efecto secundario explícito (requiere IO) --"
  contador <- newIORef 0
  mapM_ print =<< replicateM 2 (siguiente contador)  -- 1, 2
 
  putStrLn "\n-- Inmutabilidad --"
  let listaOriginal = [1, 2, 3] :: [Int]
      listaNueva    = [0] ++ listaOriginal
  mapM_ print [listaOriginal, listaNueva]  -- [1,2,3] y [0,1,2,3]
 