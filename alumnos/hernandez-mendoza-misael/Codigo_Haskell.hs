duplicar :: [Int] -> [Int]
duplicar = map (* 2)

main :: IO ()
main = print (duplicar [1, 2, 3, 4])