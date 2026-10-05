-- Pruebas del tema 2.2 (El tipo de datos).
-- Corre con: runghc -i../ejercicios/2.2-tipos 2.2-tipos-pruebas.hs
import Ejercicio1 (Punto (..), distanciaOrigen)
import Ejercicio2 (Forma (..), area)
import Ejercicio3 (mayorArea)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.2"

  r1 <- aprueba "distanciaOrigen (Punto 3 4) == 5.0" 5.0 (distanciaOrigen (Punto 3 4))
  r2 <- aprueba "distanciaOrigen (Punto 0 0) == 0.0" 0.0 (distanciaOrigen (Punto 0 0))

  r3 <- aprueba "area (Circulo 2) ~= 12.566" True (abs (area (Circulo 2) - 12.566370614359172) < 0.0001)
  r4 <- aprueba "area (Rectangulo 3 5) == 15.0" 15.0 (area (Rectangulo 3 5))

  r5 <- aprueba "mayorArea (Circulo 1) (Rectangulo 3 5) == Rectangulo 3 5"
          (Rectangulo 3 5) (mayorArea (Circulo 1) (Rectangulo 3 5))
  r6 <- aprueba "mayorArea (Rectangulo 1 1) (Circulo 5) == Circulo 5"
          (Circulo 5) (mayorArea (Rectangulo 1 1) (Circulo 5))

  resumen [r1, r2, r3, r4, r5, r6]
