@echo off
title Ferramenta de Atualização Automática do Windows
color 0A
cls

echo ===================================================
echo    FERRAMENTA DE ATUALIZACAO AUTOMATICA WINDOWS
echo ===================================================
echo.
echo Verificando privilégios de administrador...

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Executando como administrador. Continuando...
) else (
    echo Este script requer privilégios de administrador.
    echo Por favor, execute como administrador.
    echo.
    pause
    exit /b 1
)

echo.
echo Iniciando atualização do Windows e aplicativos instalados...
echo.

echo Atualizando o Windows via Windows Update...
powershell -Command "Install-Module -Name PSWindowsUpdate -Force -AllowClobber; Import-Module PSWindowsUpdate; Install-WindowsUpdate -AcceptAll -AutoReboot:$false" >nul 2>&1
echo Windows Update verificado e instalado.
echo.

echo Atualizando aplicativos via winget...
winget upgrade --all --silent
echo.
echo Atualização de aplicativos concluída.
echo.

echo Realizando limpeza de arquivos temporários...
echo.
del /q/f/s %TEMP%\*
rd /s /q %TEMP%
md %TEMP%
echo Arquivos temporários removidos.
echo.

echo ===================================================
echo    TODAS AS ATUALIZACOES FORAM CONCLUIDAS!
echo ===================================================
echo.
echo Pressione qualquer tecla para sair...
pause >nul
exit