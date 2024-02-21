#!/bin/bash

# Kontrola argumentu
if [ $# -ne 1 ]; then
    echo "Chyba: Zadejte název souboru jako argument!"
    exit 1
fi

# Kontrola existence souboru
if [ ! -f "$1" ]; then
    echo "Chyba: Soubor $1 neexistuje!"
    exit 1
fi

# Vypsání čísla řádku následujícího po posledním
last_line=$(wc -l < "$1")
next_line=$((last_line + 1))

echo "Číslo řádku po posledním: $next_line"

