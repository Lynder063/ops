#!/bin/bash

# Počet adresářů v aktuálním adresáři
num_directories=$(ls -l | grep ^d | wc -l)

# Zápis do souboru
echo "Počet adresářů: $num_directories" > adresare.txt

