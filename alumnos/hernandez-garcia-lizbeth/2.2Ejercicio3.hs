module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)


mayorArea :: Forma -> Forma -> Forma
mayorArea f1 f2
  | area f1 >= area f2 = f1
  | otherwise          = f2