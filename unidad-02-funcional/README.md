# Unidad 2: Modelo de Programación Funcional

Material completo de la unidad, en **Racket** y **Haskell**, con ejemplos ejecutables, ejercicios progresivos con pruebas automatizadas, y scripts para correr todo de una vez.

## Temario

| # | Tema | Ejemplo Racket | Ejemplo Haskell |
|---|---|---|---|
| 2.1 | Introducción al modelo funcional | [`racket/ejemplos/2.1-introduccion.rkt`](racket/ejemplos/2.1-introduccion.rkt) | [`haskell/ejemplos/2.1-introduccion.hs`](haskell/ejemplos/2.1-introduccion.hs) |
| 2.2 | El tipo de datos | [`racket/ejemplos/2.2-tipos.rkt`](racket/ejemplos/2.2-tipos.rkt) | [`haskell/ejemplos/2.2-tipos.hs`](haskell/ejemplos/2.2-tipos.hs) |
| 2.3 | Funciones | [`racket/ejemplos/2.3-funciones.rkt`](racket/ejemplos/2.3-funciones.rkt) | [`haskell/ejemplos/2.3-funciones.hs`](haskell/ejemplos/2.3-funciones.hs) |
| 2.4 | Intervalos | [`racket/ejemplos/2.4-intervalos.rkt`](racket/ejemplos/2.4-intervalos.rkt) | [`haskell/ejemplos/2.4-intervalos.hs`](haskell/ejemplos/2.4-intervalos.hs) |
| 2.5 | Operadores | [`racket/ejemplos/2.5-operadores.rkt`](racket/ejemplos/2.5-operadores.rkt) | [`haskell/ejemplos/2.5-operadores.hs`](haskell/ejemplos/2.5-operadores.hs) |
| 2.6 | Aplicaciones de las listas | [`racket/ejemplos/2.6-listas.rkt`](racket/ejemplos/2.6-listas.rkt) | [`haskell/ejemplos/2.6-listas.hs`](haskell/ejemplos/2.6-listas.hs) |
| 2.7 | Árboles | [`racket/ejemplos/2.7-arboles.rkt`](racket/ejemplos/2.7-arboles.rkt) | [`haskell/ejemplos/2.7-arboles.hs`](haskell/ejemplos/2.7-arboles.hs) |
| 2.8 | Evaluación perezosa | [`racket/ejemplos/2.8-perezosa.rkt`](racket/ejemplos/2.8-perezosa.rkt) | [`haskell/ejemplos/2.8-perezosa.hs`](haskell/ejemplos/2.8-perezosa.hs) |

Cada tema tiene, además del ejemplo:
- **3 ejercicios progresivos** (fácil, medio, difícil) en `racket/ejercicios/` y `haskell/ejercicios/`, como *stubs* con `TODO` que fallan con un mensaje claro hasta que los resuelvas.
- **Un archivo de pruebas** en `racket/pruebas/` y `haskell/pruebas/` que valida esos 3 ejercicios automáticamente.

## Cómo correr un archivo individual

```bash
# Un ejemplo o ejercicio de Racket
racket racket/ejemplos/2.6-listas.rkt

# Un ejemplo de Haskell
runghc haskell/ejemplos/2.6-listas.hs

# Unas pruebas de Racket
racket racket/pruebas/2.6-listas-pruebas.rkt

# Unas pruebas de Haskell (necesita -i apuntando a la carpeta de ejercicios del tema)
runghc -i haskell/ejercicios/2.6-listas haskell/pruebas/2.6-listas-pruebas.hs
```

## Cómo correr TODO de una vez

```bash
# Linux/Mac/Git Bash
bash scripts/correr-ejemplos.sh   # los 16 ejemplos; debe terminar sin fallos
bash scripts/correr-pruebas.sh    # las 16 pruebas; falla mientras no resuelvas ejercicios (normal)

# Windows PowerShell
pwsh scripts/correr-ejemplos.ps1
pwsh scripts/correr-pruebas.ps1
```

Requisitos: [Racket](https://download.racket-lang.org/) (incluye `rackunit`) y [GHC/runghc](https://www.haskell.org/ghcup/) instalados y accesibles en el `PATH`.

## Sobre la estructura de los ejercicios de Haskell

Los ejercicios de Haskell que se validan con pruebas automáticas viven en una subcarpeta por tema (por ejemplo `haskell/ejercicios/2.6-listas/Ejercicio1.hs`) en vez de un archivo plano como `2.6-listas-ejercicio1.hs`. Esto es porque GHC exige que el nombre del archivo coincida con el nombre del módulo para poder importarlo desde las pruebas, y un módulo no puede empezar con dígito ni tener guiones. Los **ejemplos** de Haskell no se importan (solo se ejecutan), así que esos sí usan el nombre plano `2.6-listas.hs`.

## Solucionario

Las soluciones de los ejercicios existen únicamente en la copia local de trabajo del profesor, en `_solucionario/` (ignorada por git — nunca se sube al repositorio). Los alumnos no tienen acceso a ellas.

## Verificación

Todo el contenido (los 8 temas × 2 lenguajes: ejemplos, ejercicios sin resolver con su mensaje de error, y con las soluciones aplicadas temporalmente) se ejecutó y confirmó localmente antes de subirse — con Racket v9.3 [cs] y GHC 9.10.3. El workflow de GitHub Actions (`.github/workflows/unidad2.yml`) tiene la sintaxis YAML validada, pero su ejecución real (con `Bogdanp/setup-racket@v1.15` y `haskell-actions/setup@v2.12.1`) solo se puede confirmar en GitHub, ya que no hay forma de correr Actions localmente en esta máquina.
