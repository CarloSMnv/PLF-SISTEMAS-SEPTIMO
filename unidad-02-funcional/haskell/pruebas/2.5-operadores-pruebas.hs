-- Pruebas del tema 2.5 (Operadores).
-- Corre con: runghc -i../ejercicios/2.5-operadores 2.5-operadores-pruebas.hs
import Ejercicio1 (restarDeDiez)
import Ejercicio2 ((^^^))
import Ejercicio3 (entre)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.5"

  r1 <- aprueba "restarDeDiez 3 == 7" 7 (restarDeDiez 3)
  r2 <- aprueba "restarDeDiez 10 == 0" 0 (restarDeDiez 10)

  r3 <- aprueba "2 ^^^ 10 == 1024" 1024 (2 ^^^ 10)
  r4 <- aprueba "5 ^^^ 0 == 1" 1 (5 ^^^ 0)

  r5 <- aprueba "entre 5 1 10 == True" True (entre 5 1 10)
  r6 <- aprueba "entre 15 1 10 == False" False (entre 15 1 10)

  resumen [r1, r2, r3, r4, r5, r6]
