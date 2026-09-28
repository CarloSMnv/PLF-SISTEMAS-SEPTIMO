duplicar :: [Int] -> [Int]
duplicar = map (*2)

resultado = duplicar [1,2,3,4]

main :: IO ()
main = print resultado