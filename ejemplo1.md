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
