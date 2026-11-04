-- Mini-framework casero de pruebas para Haskell (sin HUnit, solo `base`).
-- Cada archivo de pruebas usa `aprueba` por caso y `resumen` al final.
module Verificador (aprueba, resumen) where

import Control.Exception (SomeException, evaluate, try)
import System.Exit (exitFailure)

-- aprueba "nombre del caso" valorEsperado valorObtenido
-- Imprime OK o FALLO con el detalle, y regresa si pasó (para acumular en resumen).
-- Atrapa cualquier `error` (como los "TODO" de los ejercicios sin resolver)
-- para que un ejercicio fallido no tumbe todo el archivo de pruebas.
aprueba :: (Eq a, Show a) => String -> a -> a -> IO Bool
aprueba nombre esperado obtenido = do
  resultado <- try (evaluate (esperado == obtenido)) :: IO (Either SomeException Bool)
  case resultado of
    Left excepcion -> do
      putStrLn ("  [FALLO] " ++ nombre ++ " (no se pudo evaluar)")
      putStrLn ("          " ++ show excepcion)
      return False
    Right True -> do
      putStrLn ("  [OK]    " ++ nombre)
      return True
    Right False -> do
      putStrLn ("  [FALLO] " ++ nombre)
      putStrLn ("          esperado: " ++ show esperado)
      putStrLn ("          obtenido: " ++ show obtenido)
      return False

-- resumen [resultados de cada aprueba]
-- Imprime el total de casos y sale con código de error si hubo fallos
-- (para que scripts/CI puedan distinguir "todo bien" de "faltan resolver ejercicios").
resumen :: [Bool] -> IO ()
resumen resultados = do
  let total = length resultados
      pasaron = length (filter id resultados)
  putStrLn (replicate 40 '-')
  putStrLn (show pasaron ++ " / " ++ show total ++ " casos pasaron")
  if pasaron == total
    then putStrLn "Todo correcto."
    else do
      putStrLn "Hay ejercicios sin resolver o con errores."
      exitFailure
