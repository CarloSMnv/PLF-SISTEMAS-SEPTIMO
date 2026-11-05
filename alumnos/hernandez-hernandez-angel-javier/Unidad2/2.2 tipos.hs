data Punto = Punto
  { px :: Double
  , py :: Double
  } deriving (Show)

data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show)

area :: Forma -> Double
area (Circulo r) = pi * r * r
area (Rectangulo b h) = b * h

main :: IO ()
main = do

  putStrLn "-- Tipos básicos --"
  print (42 :: Int, 3.14 :: Double, "hola", True, 'a')

  putStrLn ""

  putStrLn "-- Tipo compuesto: record --"

  let p = Punto 3 4

  print p
  print (px p)
  print (py p)

  putStrLn ""

  putStrLn "-- Tipo algebraico (sum type) --"

  print (area (Circulo 2))
  print (area (Rectangulo 3 5))