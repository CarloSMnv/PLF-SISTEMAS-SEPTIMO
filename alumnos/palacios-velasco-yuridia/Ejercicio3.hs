module Ejercicio3 (mayorArea) where

import Ejercicio2 (Forma (..), area)

mayorArea :: Forma -> Forma -> Forma
mayorArea forma1 forma2 = 
    if area forma1 >= area forma2
    then forma1
    else forma2
