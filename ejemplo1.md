Problema: *sumar los números pares de una lista*.

**Imperativo (Python):**
```python
def suma_pares(lista):
    total = 0
    for n in lista:
        if n % 2 == 0:
            total = total + n
    return total
```
Hay una variable acumuladora que **cambia** en cada vuelta. Hay un ciclo explícito.

**Orientado a Objetos (Python):**
```python
class ListaNumeros:
    def __init__(self, numeros):
        self.numeros = numeros

    def es_par(self, n):
        return n % 2 == 0

    def suma_pares(self):
        total = 0
        for n in self.numeros:
            if self.es_par(n):
                total += n
        return total

lista = ListaNumeros([1, 2, 3, 4, 5, 6])
print(lista.suma_pares())
```
El estado (`self.numeros`) y el comportamiento (`es_par`, `suma_pares`) se agrupan en un objeto. La lógica se resuelve enviando un **mensaje** (llamando a un método) a una instancia, en vez de operar sobre datos sueltos.

**Funcional (Haskell):**
```haskell
sumaPares :: [Int] -> Int
sumaPares lista = sum (filter even lista)
```
No hay variables que cambien. No hay ciclo. Se describe la transformación: *filtra los pares, súmalos*.

**Lógico (Prolog):**
```prolog
suma_pares([], 0).
suma_pares([H|T], S) :- 0 is H mod 2, suma_pares(T, S1), S is S1 + H.
suma_pares([H|T], S) :- 1 is H mod 2, suma_pares(T, S).
```
Se declaran las condiciones bajo las cuales `S` es la suma de los pares de una lista.

**Declarativo (SQL):**
```sql
SELECT SUM(n) AS total
FROM numeros
WHERE n % 2 = 0;
```
Se especifica **qué** resultado se quiere (la suma de los pares) sin describir **cómo** recorrer o acumular; el motor de la base de datos decide la forma de ejecutarlo.

**Concurrente/Paralelo (Go):**
```go
func sumaPares(numeros []int) int {
    resultados := make(chan int, len(numeros))
    for _, n := range numeros {
        go func(n int) {
            if n%2 == 0 {
                resultados <- n
            } else {
                resultados <- 0
            }
        }(n)
    }

    total := 0
    for range numeros {
        total += <-resultados
    }
    return total
}
```
Cada número se evalúa en una **goroutine** independiente que corre de forma concurrente; los resultados se recolectan mediante un canal. El énfasis está en coordinar tareas que ocurren al mismo tiempo, no en el orden secuencial de ejecución.


## 1. El primer contraste: duplicar cada elemento de una lista

**Python (imperativo):**
```python
def duplicar(lista):
    resultado = []
    for x in lista:
        resultado.append(x * 2)
    return resultado

duplicar([1, 2, 3, 4])   # [2, 4, 6, 8]
```

**Haskell (funcional):**
```haskell
duplicar :: [Int] -> [Int]
duplicar = map (*2)

duplicar [1,2,3,4]   -- [2,4,6,8]
```

**Racket (funcional):**
```racket
(define (duplicar lst)
  (map (lambda (x) (* x 2)) lst))

(duplicar '(1 2 3 4))   ; '(2 4 6 8)
```

## 2. Filtrar: quedarse solo con los pares

**Python (imperativo):**
```python
def solo_pares(lista):
    resultado = []
    for x in lista:
        if x % 2 == 0:
            resultado.append(x)
    return resultado

solo_pares([1, 2, 3, 4, 5, 6])   # [2, 4, 6]
```

**Haskell:**
```haskell
soloPares :: [Int] -> [Int]
soloPares = filter even

soloPares [1,2,3,4,5,6]   -- [2,4,6]
```

**Racket:**
```racket
(define (solo-pares lst)
  (filter even? lst))

(solo-pares '(1 2 3 4 5 6))   ; '(2 4 6)
```

## 3. Sumar todos los elementos: acumulador vs. `fold`

**Python (imperativo):**
```python
def suma_total(lista):
    total = 0
    for x in lista:
        total = total + x
    return total

suma_total([1, 2, 3, 4])   # 10
```

**Haskell:**
```haskell
sumaTotal :: [Int] -> Int
sumaTotal = foldr (+) 0

sumaTotal [1,2,3,4]   -- 10
-- (existe también la función ya hecha: sum [1,2,3,4])
```

**Racket:**
```racket
(define (suma-total lst)
  (foldr + 0 lst))

(suma-total '(1 2 3 4))   ; 10
; (existe también: (apply + lst))
```
