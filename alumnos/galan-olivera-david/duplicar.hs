main :: IO ()
main = print (duplicar [1,2,3,4])
 duplicar :: [Int] -> [Int]
duplicar = map (*2)

duplicar [1,2,3,4]  -- [2,4,6,8]
 
