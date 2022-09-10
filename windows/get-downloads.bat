@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "Reg32=%SystemRoot%\System32\reg.exe"
if not "%ProgramFiles(x86)%" == "" set "Reg32=%SystemRoot%\SysWOW64\reg.exe"

set "DownloadShellFolder="
for /F "skip=1 tokens=1,2*" %%T in ('%Reg32% query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "{374DE290-123F-4565-9164-39C4925E467B}" 2^>nul') do (
    if /I "%%T" == "{374DE290-123F-4565-9164-39C4925E467B}" (
        set "DownloadShellFolder=%%V"
        goto GetDownloadDirectory
    )
)

:GetDownloadDirectory
set "DownloadDirectory="
for /F "skip=1 tokens=1,2,3*" %%S in ('%Reg32% query "HKCU\Software\Microsoft\Internet Explorer" /v "Download Directory" 2^>nul') do (
    if /I "%%S" == "Download" (
        if /I "%%T" == "Directory" (
            set "DownloadDirectory=%%V"
            goto GetSaveDirectory
        )
    )
)

:GetSaveDirectory
set "SaveDirectory="
for /F "skip=1 tokens=1,2,3*" %%S in ('%Reg32% query "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Save Directory" 2^>nul') do (
    if /I "%%S" == "Save" (
        if /I "%%T" == "Directory" (
            set "SaveDirectory=%%V"
            goto OutputResults
        )
    )
)

:OutputResults
rem cls

if not exist "%USERPROFILE%\Downloads" goto OutputShellFolder
echo %USERPROFILE%\Downloads

:OutputShellFolder
if not defined DownloadShellFolder goto OutputDownloadDir
if "%DownloadShellFolder:~-1%" == "\" set "DownloadShellFolder=%DownloadShellFolder:~0,-1%"
echo %DownloadShellFolder%

:OutputDownloadDir
if not defined DownloadDirectory goto OutputSaveDir
if "%DownloadDirectory:~-1%" == "\" set "DownloadDirectory=%DownloadDirectory:~0,-1%"
echo %DownloadDirectory%

:OutputSaveDir
if not defined SaveDirectory goto EndBatch
if "%SaveDirectory:~-1%" == "\" set "SaveDirectory=%SaveDirectory:~0,-1%"
echo %SaveDirectory%

:EndBatch
endlocal