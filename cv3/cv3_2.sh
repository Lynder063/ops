#!/bin/bash

# $# je proměná která obsahuje počet argumentů předaných do scriptu
# Dáme že pokud byl zadaný jiný počet než 1, vypíše echo a dát exit 1

if [ $# -ne 1 ]; then
    echo "Chyba: Zadejte název souboru jako argument!"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Chyba: Soubor $1 neexistuje!"
    exit 1
fi

# 

line=$(sed -n '5p' "$1")
echo "5. řádek souboru $1: $line"

