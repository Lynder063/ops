@echo off
echo Název počítače:
hostname
echo.
echo Disk, na kterém je nainstalován OS:
wmic logicaldisk where "DriveType='3'" get DeviceID, VolumeName
echo.
echo Adresář, ve kterém je nainstalován OS:
echo %SystemRoot%
echo.
echo Adresáře, ve kterých OS hledá příkazy:
echo %PATH%
echo.
echo Umístění dočasných a pracovních souborů:
echo %TEMP%
echo.
echo Aktuálně přihlášený uživatel:
echo %USERNAME%
echo.
echo Cesta k adresáři, ve kterém je umístěn uživatelův profil:
echo %USERPROFILE%
echo.
echo Počet a typ procesorů:
wmic cpu get name

