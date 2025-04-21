@echo off
chcp 1252 >nul
title Ferramenta de Atualiza%%231%%o Autom%%225%%tica do Windows
color 0A
cls

echo ===================================================
echo    FERRAMENTA DE ATUALIZACAO AUTOMATICA WINDOWS
echo ===================================================
echo.
echo Verificando privil%%233%%gios de administrador...

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Executando como administrador. Continuando...
) else (
    echo Este script requer privil%%233%%gios de administrador.
    echo Por favor, execute como administrador.
    echo.
    pause
    exit /b 1
)

echo.
echo Iniciando atualiza%%231%%o do Windows e aplicativos instalados...
echo.

echo Atualizando o Windows via Windows Update...
powershell -Command "Install-Module -Name PSWindowsUpdate -Force -AllowClobber; Import-Module PSWindowsUpdate; Install-WindowsUpdate -AcceptAll -AutoReboot:$false" >nul 2>&1
echo Windows Update verificado e instalado.
echo.

echo Atualizando aplicativos via winget...
winget upgrade --all --silent
echo.
echo Atualiza%%231%%o de aplicativos conclu%%237%%da.
echo.

echo Realizando limpeza de arquivos tempor%%225%%rios...
echo.
del /q/f/s %TEMP%\*
rd /s /q %TEMP%
md %TEMP%
echo Arquivos tempor%%225%%rios removidos.
echo.

echo ===================================================
echo    TODAS AS ATUALIZACOES FORAM CONCLUIDAS!
echo ===================================================
echo.
echo Pressione qualquer tecla para sair...
pause >nul
exit
