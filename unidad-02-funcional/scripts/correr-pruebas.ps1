# Corre todas las pruebas (Racket y Haskell) de la Unidad 2.
# Mientras los ejercicios tengan su TODO sin resolver, es NORMAL que
# fallen (a propósito: así sabes qué falta). Este script solo reporta,
# no exige que todo pase.
#
# Uso: pwsh scripts/correr-pruebas.ps1

Set-Location (Join-Path $PSScriptRoot "..")
$fallos = 0

Write-Host "== Pruebas de Racket =="
Get-ChildItem "racket/pruebas/*.rkt" | ForEach-Object {
    Write-Host "-- $($_.FullName) --"
    racket $_.FullName
    if ($LASTEXITCODE -ne 0) { $fallos++ }
    Write-Host ""
}

Write-Host "== Pruebas de Haskell =="
Get-ChildItem "haskell/pruebas/*-pruebas.hs" | ForEach-Object {
    $tema = $_.BaseName -replace '-pruebas$', ''
    Write-Host "-- $($_.FullName) --"
    runghc "-ihaskell/ejercicios/$tema" $_.FullName
    if ($LASTEXITCODE -ne 0) { $fallos++ }
    Write-Host ""
}

Write-Host ""
if ($fallos -gt 0) {
    Write-Host "$fallos archivo(s) de pruebas con casos sin resolver o con errores (normal mientras no completes los ejercicios)."
} else {
    Write-Host "Todas las pruebas pasaron."
}
