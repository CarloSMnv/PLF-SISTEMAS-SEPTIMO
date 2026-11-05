module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2
  | area forma1 >= area forma2 = forma1
  | otherwise                  = forma2