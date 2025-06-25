@echo off
cls
echo [^>] Installation des dependances...
timeout /t 2 >nul

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo [^!] Python non installe
    echo [^>] Telechargement de Python...
    start "" "https://www.python.org/downloads/"
    timeout /t 5 >nul
    exit /b 1
)

python -m pip install --upgrade pip >nul 2>&1
python -m pip install zlib lzma >nul 2>&1

echo [^+] Installation terminee!
timeout /t 2 >nul
cls