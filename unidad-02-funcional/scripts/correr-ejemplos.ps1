# Corre todos los ejemplos (Racket y Haskell) de la Unidad 2.
# Los ejemplos deben ejecutarse sin errores siempre.
#
# Uso: pwsh scripts/correr-ejemplos.ps1

Set-Location (Join-Path $PSScriptRoot "..")
$fallos = 0

Write-Host "== Ejemplos de Racket =="
Get-ChildItem "racket/ejemplos/*.rkt" | ForEach-Object {
    Write-Host "-- $($_.FullName) --"
    racket $_.FullName
    if ($LASTEXITCODE -ne 0) {
        Write-Host "FALLÓ: $($_.FullName)"
        $fallos++
    }
    Write-Host ""
}

Write-Host "== Ejemplos de Haskell =="
Get-ChildItem "haskell/ejemplos/*.hs" | ForEach-Object {
    Write-Host "-- $($_.FullName) --"
    runghc $_.FullName
    if ($LASTEXITCODE -ne 0) {
        Write-Host "FALLÓ: $($_.FullName)"
        $fallos++
    }
    Write-Host ""
}

if ($fallos -gt 0) {
    Write-Host "$fallos ejemplo(s) fallaron."
    exit 1
}
Write-Host "Todos los ejemplos corrieron correctamente."
