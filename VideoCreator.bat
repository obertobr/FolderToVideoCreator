@echo off

set "Mainfolder=C:\HD\Arquivos\Videos\Canais\"

ECHO 1.obertobr
ECHO 2.sacop
ECHO 3.Joao
ECHO 4.Gabriel
ECHO 5.Outro
ECHO.

CHOICE /C 12345 /M "Escolha o Canal: "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 5 set /p "Channel=Canal ?: "
IF ERRORLEVEL 4 set "Channel=Gabriel"
IF ERRORLEVEL 3 set "Channel=João"
IF ERRORLEVEL 2 set "Channel=sacop"
IF ERRORLEVEL 1 set "Channel=obertobr"

ECHO.
set /p "Name=Nome do video ?: "
mkdir "%Mainfolder%%Channel%\%Name%\Notas"
mkdir "%Mainfolder%%Channel%\%Name%\Brutos"
mkdir "%Mainfolder%%Channel%\%Name%\Assests"
mkdir "%Mainfolder%%Channel%\%Name%\Sons"
mkdir "%Mainfolder%%Channel%\%Name%\Projeto"
mkdir "%Mainfolder%%Channel%\%Name%\Thumbnail\Assests"
mkdir "%Mainfolder%%Channel%\%Name%\Thumbnail\Projeto"
mkdir "%Mainfolder%%Channel%\%Name%\Thumbnail\Final"
mkdir "%Mainfolder%%Channel%\%Name%\Final"

echo Criado com sucesso
timeout 2