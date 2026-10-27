-- Función que recibe una lista de enteros y devuelve un solo entero (la suma total)
sumarLista :: [Int] -> Int

-- 1. CASO BASE: ¿Cuándo nos detenemos? 
-- Si la lista está vacía, lógicamente la suma es 0.
sumarLista [] = 0

-- 2. CASO RECURSIVO: ¿Cómo avanzamos?
-- Usamos pattern matching (x:xs) para separar el primer número (x) del resto de la lista (xs).
-- Luego, sumamos ese primer número con el resultado de volver a llamar la función para el resto.
sumarLista (x:xs) = x + sumarLista xs
