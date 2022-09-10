@echo off
setlocal enabledelayedexpansion

set "gc=%1"
set "repo=%gc:~12%"

cd %~dp0

FOR /F "tokens=*" %%i IN ('get-downloads.bat') DO SET downloads=%%i

cd %downloads%

echo Press ENTER to clone "%repo%"
set /p confirm=""

git clone "%repo%"