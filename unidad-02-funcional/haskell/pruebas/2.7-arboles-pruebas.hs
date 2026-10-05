-- Pruebas del tema 2.7 (Árboles).
-- Corre con: runghc -i../ejercicios/2.7-arboles 2.7-arboles-pruebas.hs
--
-- Cada ejercicio define su propio tipo `Arbol` (son tipos distintos
-- aunque se llamen igual), así que los importamos calificados para
-- no chocar entre sí.
import qualified Ejercicio1 as E1
import qualified Ejercicio2 as E2
import qualified Ejercicio3 as E3
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.7"

  let a1 = foldl E1.insertar E1.Hoja [5, 3, 8, 1 :: Int]
  r1a <- aprueba "altura Hoja == 0" 0 (E1.altura E1.Hoja)
  r1b <- aprueba "altura (un nodo) == 1" 1 (E1.altura (E1.insertar E1.Hoja (5 :: Int)))
  r1c <- aprueba "altura arbol == 3" 3 (E1.altura a1)

  let a2 = foldl E2.insertar E2.Hoja [5, 3, 8 :: Int]
  r2a <- aprueba "contarNodos Hoja == 0" 0 (E2.contarNodos (E2.Hoja :: E2.Arbol Int))
  r2b <- aprueba "contarNodos arbol == 3" 3 (E2.contarNodos a2)

  let a3 = foldl E3.insertar E3.Hoja [5, 3, 8, 1 :: Int]
  r3a <- aprueba "nivelDe arbol 5 == 0" 0 (E3.nivelDe a3 5)
  r3b <- aprueba "nivelDe arbol 3 == 1" 1 (E3.nivelDe a3 3)
  r3c <- aprueba "nivelDe arbol 1 == 2" 2 (E3.nivelDe a3 1)
  r3d <- aprueba "nivelDe arbol 100 == -1" (-1) (E3.nivelDe a3 100)

  resumen [r1a, r1b, r1c, r2a, r2b, r3a, r3b, r3c, r3d]
