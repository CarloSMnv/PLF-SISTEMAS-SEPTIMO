-- Pruebas del tema 2.1 (Introducción al modelo funcional).
-- Corre con: runghc -i../ejercicios/2.1-introduccion 2.1-introduccion-pruebas.hs
-- Mientras los ejercicios tengan su TODO sin resolver, estas pruebas FALLAN
-- (a propósito: así sabes qué falta). El proceso no truena: cada caso se
-- reporta por separado gracias a Verificador.
import Ejercicio1 (triple)
import Ejercicio2 (agregarAlFinal)
import Ejercicio3 (aplicarNVeces)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.1"

  r1 <- aprueba "triple 4 == 12" 12 (triple 4)
  r2 <- aprueba "triple 0 == 0" 0 (triple 0)
  r3 <- aprueba "triple (-2) == -6" (-6) (triple (-2))

  r4 <- aprueba "agregarAlFinal [1,2,3] 4 == [1,2,3,4]" [1, 2, 3, 4] (agregarAlFinal [1, 2, 3] 4)
  r5 <- aprueba "agregarAlFinal [] 1 == [1]" [1] (agregarAlFinal [] 1)

  r6 <- aprueba "aplicarNVeces 3 (*2) 1 == 8" (8 :: Int) (aplicarNVeces 3 (* 2) 1)
  r7 <- aprueba "aplicarNVeces 0 (*100) 5 == 5" (5 :: Int) (aplicarNVeces 0 (* 100) 5)
  r8 <- aprueba "aplicarNVeces 2 (++ \"!\") \"hola\" == \"hola!!\"" "hola!!" (aplicarNVeces 2 (++ "!") "hola")

  resumen [r1, r2, r3, r4, r5, r6, r7, r8]
