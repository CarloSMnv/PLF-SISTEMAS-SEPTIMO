#!/usr/bin/env bash
# Corre todos los ejemplos (Racket y Haskell) de la Unidad 2.
# Los ejemplos deben ejecutarse sin errores siempre.
#
# Uso: bash scripts/correr-ejemplos.sh
set -uo pipefail
cd "$(dirname "$0")/.."

RACKET_BIN="${RACKET_BIN:-racket}"
fallos=0

echo "== Ejemplos de Racket =="
for f in racket/ejemplos/*.rkt; do
  echo "-- $f --"
  if ! "$RACKET_BIN" "$f"; then
    echo "FALLÓ: $f"
    fallos=$((fallos + 1))
  fi
  echo
done

echo "== Ejemplos de Haskell =="
for f in haskell/ejemplos/*.hs; do
  echo "-- $f --"
  if ! runghc "$f"; then
    echo "FALLÓ: $f"
    fallos=$((fallos + 1))
  fi
  echo
done

if [ "$fallos" -gt 0 ]; then
  echo "$fallos ejemplo(s) fallaron."
  exit 1
fi
echo "Todos los ejemplos corrieron correctamente."
