#!/usr/bin/env bash
# Corre todas las pruebas (Racket y Haskell) de la Unidad 2.
# Mientras los ejercicios tengan su TODO sin resolver, es NORMAL que
# fallen (a propósito: así sabes qué falta). Este script solo reporta,
# no exige que todo pase.
#
# Uso: bash scripts/correr-pruebas.sh
set -uo pipefail
cd "$(dirname "$0")/.."

RACKET_BIN="${RACKET_BIN:-racket}"
fallos=0

echo "== Pruebas de Racket =="
for f in racket/pruebas/*.rkt; do
  echo "-- $f --"
  "$RACKET_BIN" "$f"
  if [ $? -ne 0 ]; then fallos=$((fallos + 1)); fi
  echo
done

echo "== Pruebas de Haskell =="
for f in haskell/pruebas/*-pruebas.hs; do
  tema=$(basename "$f" -pruebas.hs)
  echo "-- $f --"
  runghc -i"haskell/ejercicios/$tema" "$f"
  if [ $? -ne 0 ]; then fallos=$((fallos + 1)); fi
  echo
done

echo
if [ "$fallos" -gt 0 ]; then
  echo "$fallos archivo(s) de pruebas con casos sin resolver o con errores (normal mientras no completes los ejercicios)."
else
  echo "Todas las pruebas pasaron."
fi
