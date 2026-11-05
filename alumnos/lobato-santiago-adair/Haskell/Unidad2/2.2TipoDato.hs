data Punto = Punto { px :: Double, py :: Double } deriving (Show)
 
data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show)
 
-- \case evita nombrar el argumento
area :: Forma -> Double
area = \case
  Circulo r      -> pi * r ^ 2
  Rectangulo b h -> b * h
 
main :: IO ()
main = do
  putStrLn "-- Tipos básicos --"
  print (42 :: Int, 3.14 :: Double, "hola", True, 'a')
 
  putStrLn "\n-- Tipo compuesto: record --"
  let p@(Punto x y) = Punto 3 4   -- pattern matching sobre el record
  print p
  mapM_ print [x, y]
 
  putStrLn "\n-- Tipo algebraico (sum type) --"
  mapM_ (print . area) [Circulo 2, Rectangulo 3 5]
 