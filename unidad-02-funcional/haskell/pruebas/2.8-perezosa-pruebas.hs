-- Pruebas del tema 2.8 (Evaluación perezosa).
-- Corre con: runghc -i../ejercicios/2.8-perezosa 2.8-perezosa-pruebas.hs
import Ejercicio1 (primerosNFibonacci)
import Ejercicio2 (primerosNPrimos)
import Ejercicio3 (primerMayorQue)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.8"

  r1 <- aprueba "primerosNFibonacci 6 == [0,1,1,2,3,5]" [0, 1, 1, 2, 3, 5] (primerosNFibonacci 6)
  r2 <- aprueba "primerosNFibonacci 1 == [0]" [0] (primerosNFibonacci 1)

  r3 <- aprueba "primerosNPrimos 5 == [2,3,5,7,11]" [2, 3, 5, 7, 11] (primerosNPrimos 5)
  r4 <- aprueba "primerosNPrimos 1 == [2]" [2] (primerosNPrimos 1)

  r5 <- aprueba "primerMayorQue 100 [0..] == 101" 101 (primerMayorQue 100 [0 ..])
  r6 <- aprueba "primerMayorQue 0 [0..] == 1" 1 (primerMayorQue 0 [0 ..])

  resumen [r1, r2, r3, r4, r5, r6]
