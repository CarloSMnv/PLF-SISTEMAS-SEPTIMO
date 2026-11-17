duplicar :: [Int] -> [Int]
duplicar lista = map (*2) lista

main :: IO ()
main = print (duplicar [1,2,3,4])
