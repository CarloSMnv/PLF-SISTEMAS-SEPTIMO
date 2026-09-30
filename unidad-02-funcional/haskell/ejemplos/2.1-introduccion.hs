-- ============================================================
-- 2.1 Introducción al modelo funcional
-- Ideas clave: funciones puras, inmutabilidad, transparencia referencial
--
-- Nota: este archivo no declara `module ... where`, así que GHC lo trata
-- como `Main` implícito. Se ejecuta directo con `runghc 2.1-introduccion.hs`.
-- ============================================================

import Data.IORef

-- --- 1. Función pura ------------------------------------------
-- En Haskell TODA función normal es pura por definición: su resultado
-- depende solo de sus argumentos y no hay forma de "mutar" nada desde
-- fuera sin pasar por IO (como veremos abajo).
cuadrado :: Int -> Int
cuadrado x = x * x

-- --- 3. Contraste: efecto secundario real requiere IO -----------
-- A diferencia de Racket/Python, Haskell no permite un contador mutable
-- "escondido": el compilador obliga a marcar el efecto con el tipo IO.
siguiente :: IORef Int -> IO Int
siguiente ref = do
  n <- readIORef ref
  let n' = n + 1
  writeIORef ref n'
  return n'

main :: IO ()
main = do
  -- --- 2. Transparencia referencial ---------------------------
  -- (cuadrado 5) siempre vale 25: se puede sustituir por su valor
  -- en cualquier parte sin cambiar el resultado del programa.
  putStrLn "-- Función pura y transparencia referencial --"
  print (cuadrado 5 + cuadrado 5)  -- 50
  print (25 + 25 :: Int)           -- 50 (mismo resultado)

  putStrLn ""
  putStrLn "-- Efecto secundario explícito (requiere IO) --"
  contador <- newIORef 0
  a <- siguiente contador
  b <- siguiente contador
  print a  -- 1
  print b  -- 2 (misma llamada, resultado distinto: por eso necesita IO)

  -- --- 4. Inmutabilidad ----------------------------------------
  -- Las listas en Haskell son inmutables: "agregar" un elemento crea
  -- una lista nueva, la original queda intacta.
  putStrLn ""
  putStrLn "-- Inmutabilidad --"
  let listaOriginal = [1, 2, 3] :: [Int]
      listaNueva     = 0 : listaOriginal
  print listaOriginal  -- [1,2,3]      <- no cambió
  print listaNueva     -- [0,1,2,3]    <- es una lista distinta

-- Salida esperada al ejecutar `runghc 2.1-introduccion.hs`:
-- -- Función pura y transparencia referencial --
-- 50
-- 50
--
-- -- Efecto secundario explícito (requiere IO) --
-- 1
-- 2
--
-- -- Inmutabilidad --
-- [1,2,3]
-- [0,1,2,3]
