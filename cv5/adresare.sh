#!/bin/bash

# Počet adresářů v aktuálním adresáři
num_directories=$(find . -maxdepth 1 -type d | wc -l)

# Zápis do souboru
echo "Počet adresářů: $num_directories" > adresare.txt

