@echo off
cls
echo Vypisovani adresarove struktury disku C:
dir C:\ /AD /P /S

pause

echo.
echo Vytvarim adresar C:\ops
cd /d C:\
mkdir ops

pause

echo.
echo Mazu adresar C:\ops
rmdir /s /q C:\ops

echo.
echo "Koncim."

