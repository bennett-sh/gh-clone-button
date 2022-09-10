
@echo off

echo Removing URL protocol.
REG DELETE HKCR\git-clone
echo Done.
