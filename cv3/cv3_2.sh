#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Chyba: Zadejte název souboru jako argument!"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "Chyba: Soubor $1 neexistuje!"
	exit 1
fi
# Dokumentaci k tomuto kodu najdeme v 'cv3_1.sh'

line=$(sed -n '5p' "$1")
# Tento řádek uloží do proměné 'line'
# Výsledek příkazu $sed -n '5p' "$1"
# 5p je pátý řádel
# $1 je definováná proměná která je náš soubor

echo "5. řádek souboru $1: $line"
