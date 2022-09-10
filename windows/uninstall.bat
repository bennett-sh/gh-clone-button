@echo off

rem UAC Elevation
NET FILE > NUL 2>&1 || POWERSHELL -ex Unrestricted -Command "Start-Process -Verb RunAs -FilePath '%ComSpec%' -ArgumentList '/c \"%~fnx0\" %*'" && EXIT /b

echo Removing URL protocol.
REG DELETE HKCR\git-clone
echo Done.
