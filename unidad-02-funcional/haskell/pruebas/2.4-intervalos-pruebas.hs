-- Pruebas del tema 2.4 (Intervalos).
-- Corre con: runghc -i../ejercicios/2.4-intervalos 2.4-intervalos-pruebas.hs
import Ejercicio1 (sumaRango)
import Ejercicio2 (multiplosDe)
import Ejercicio3 (primerosNPares)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.4"

  r1 <- aprueba "sumaRango 1 5 == 15" 15 (sumaRango 1 5)
  r2 <- aprueba "sumaRango 4 4 == 4" 4 (sumaRango 4 4)

  r3 <- aprueba "multiplosDe 3 15 == [3,6,9,12,15]" [3, 6, 9, 12, 15] (multiplosDe 3 15)
  r4 <- aprueba "multiplosDe 5 4 == []" [] (multiplosDe 5 4)

  r5 <- aprueba "primerosNPares 4 == [0,2,4,6]" [0, 2, 4, 6] (primerosNPares 4)
  r6 <- aprueba "primerosNPares 1 == [0]" [0] (primerosNPares 1)

  resumen [r1, r2, r3, r4, r5, r6]
