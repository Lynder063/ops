@echo off
rem Získat uživatelské jméno
rem (funguje pouze v cmd.exe, ne v powershell)
set "username=%USERNAME%"

rem Zobrazit přivítání
echo ======================================
echo Vítejte, %username%!
echo ======================================
echo Jste přihlášeni jako: %username%
echo Datum a čas: %DATE:~0,10% %TIME:~0,8%
echo ======================================

rem Čekat na stisk klávesy
pause >nul

rem Ukončit skript
exit
