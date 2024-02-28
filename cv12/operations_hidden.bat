@echo off
cls > nul
dir C:\ /AD /S /B > temp.txt
type temp.txt
del temp.txt

pause > nul

cd /d C:\
mkdir ops > nul
pause > nul

rmdir /s /q C:\ops > nul

echo "Koncim."

