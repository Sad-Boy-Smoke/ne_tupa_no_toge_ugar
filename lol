$pythonScriptUrl = "https://raw.githubusercontent.com/ВАШ_ЛОГИН/ВАШ_РЕПО/ВЕТКА/hello.py"

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
