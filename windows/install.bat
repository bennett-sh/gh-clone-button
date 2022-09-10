
@echo off

rem UAC Elevation
NET FILE > NUL 2>&1 || POWERSHELL -ex Unrestricted -Command "Start-Process -Verb RunAs -FilePath '%ComSpec%' -ArgumentList '/c \"%~fnx0\" %*'" && EXIT /b

echo Adding URL protocol.
REG ADD HKCR\git-clone /v "URL Protocol" /t "REG_SZ" /f > NUL
REG ADD HKCR\git-clone\shell\open\command /ve /f /d "\"%~dp0git-clone.bat\" %%1" > NUL
echo Done.
