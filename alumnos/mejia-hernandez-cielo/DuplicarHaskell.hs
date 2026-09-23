duplicar :: [Int] -> [Int]
duplicar = map (*2)

main :: IO ()
main = print (duplicar [1, 2, 3, 4])
-- Salida: [2,4,6,8]