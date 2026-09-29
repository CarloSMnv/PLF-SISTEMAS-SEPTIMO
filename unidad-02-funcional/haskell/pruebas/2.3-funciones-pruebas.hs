-- Pruebas del tema 2.3 (Funciones).
-- Corre con: runghc -i../ejercicios/2.3-funciones 2.3-funciones-pruebas.hs
import Ejercicio1 (sumarN)
import Ejercicio2 (componer)
import Ejercicio3 (aplicarSiCumple)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.3"

  r1 <- aprueba "sumarN 5 3 == 8" 8 (sumarN 5 3)
  r2 <- aprueba "sumarN 0 10 == 10" 10 (sumarN 0 10)

  r3 <- aprueba "componer (*2) (+3) 5 == 16" 16 (componer (* 2) (+ 3) 5)
  r4 <- aprueba "componer id (*10) 2 == 20" 20 (componer id (* 10) 2)

  r5 <- aprueba "aplicarSiCumple even (*2) 4 == 8" 8 (aplicarSiCumple even (* 2) 4)
  r6 <- aprueba "aplicarSiCumple even (*2) 3 == 3" 3 (aplicarSiCumple even (* 2) 3)

  resumen [r1, r2, r3, r4, r5, r6]
