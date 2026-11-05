module Ejercicio2 (agregarAlFinal) where

agregarAlFinal :: [Int] -> Int -> [Int]
agregarAlFinal [] elemento = [elemento]
agregarAlFinal (x:xs) elemento = x : agregarAlFinal xs elemento

main :: IO ()
main = print (agregarAlFinal [1,2,3] 4)