-- Pruebas del tema 2.6 (Aplicaciones de las listas).
-- Corre con: runghc -i../ejercicios/2.6-listas 2.6-listas-pruebas.hs
import Ejercicio1 (duplicarTodos)
import Ejercicio2 (soloPares)
import Ejercicio3 (sumaConFoldr)
import Verificador (aprueba, resumen)

main :: IO ()
main = do
  putStrLn "Tema 2.6"

  r1 <- aprueba "duplicarTodos [1,2,3] == [2,4,6]" [2, 4, 6] (duplicarTodos [1, 2, 3])
  r2 <- aprueba "duplicarTodos [] == []" [] (duplicarTodos [])

  r3 <- aprueba "soloPares [5,2,8,1,9,3] == [2,8]" [2, 8] (soloPares [5, 2, 8, 1, 9, 3])
  r4 <- aprueba "soloPares [1,3,5] == []" [] (soloPares [1, 3, 5])

  r5 <- aprueba "sumaConFoldr [1,2,3,4] == 10" 10 (sumaConFoldr [1, 2, 3, 4])
  r6 <- aprueba "sumaConFoldr [] == 0" 0 (sumaConFoldr [])

  resumen [r1, r2, r3, r4, r5, r6]
