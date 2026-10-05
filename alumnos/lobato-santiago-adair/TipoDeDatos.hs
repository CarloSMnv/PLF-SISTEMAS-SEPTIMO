-- ============================================================
-- 2.2 El tipo de datos
-- Ideas clave: tipos básicos, tipos compuestos (record), tipos algebraicos (sum types)
-- ============================================================

-- --- 2. Tipo compuesto (record) ---------------------------------
-- `data` con sintaxis de récord crea un tipo con campos con nombre
-- y genera automáticamente las funciones de acceso (px, py).
data Punto = Punto { px :: Double, py :: Double } deriving (Show)

-- --- 3. Tipo algebraico (sum type) -------------------------------
-- A diferencia de Racket, Haskell sí tiene tipos suma nativos:
-- `Forma` ES un Circulo O un Rectangulo, y el compilador lo sabe.
data Forma
  = Circulo Double
  | Rectangulo Double Double
  deriving (Show)

area :: Forma -> Double
area (Circulo r) = pi * r * r
area (Rectangulo b h) = b * h

main :: IO ()
main = do
  -- --- 1. Tipos básicos ------------------------------------------
  putStrLn "-- Tipos básicos --"
  print (42 :: Int, 3.14 :: Double, "hola", True, 'a')
  -- número entero, número flotante, string, booleano, carácter

  putStrLn ""
  putStrLn "-- Tipo compuesto: record --"
  let p = Punto 3 4
  print p          -- Punto {px = 3.0, py = 4.0}
  print (px p)     -- 3.0
  print (py p)     -- 4.0

  putStrLn ""
  putStrLn "-- Tipo algebraico (sum type) --"
  print (area (Circulo 2))         -- 12.566370614359172
  print (area (Rectangulo 3 5))    -- 15.0

-- Salida esperada al ejecutar `runghc 2.2-tipos.hs`:
-- -- Tipos básicos --
-- (42,3.14,"hola",True,'a')
--
-- -- Tipo compuesto: record --
-- Punto {px = 3.0, py = 4.0}
-- 3.0
-- 4.0
--
-- -- Tipo algebraico (sum type) --
-- 12.566370614359172
-- 15.0