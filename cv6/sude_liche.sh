#!/bin/bash

# Vytvoření pomocného souboru pro liché a sudé řádky
awk 'NR%2==0' jmena.txt > suda.jmena.txt
awk 'NR%2!=0' jmena.txt > licha.jmena.txt

# Přidání značek "s" pro sudé řádky
sed 's/^/s /' suda.jmena.txt > temp.txt

# Přidání značek "l" pro liché řádky
sed 's/^/l /' licha.jmena.txt >> temp.txt

# Zobrazení výsledného souboru
cat temp.txt

# Smazání pomocných souborů
rm suda.jmena.txt licha.jmena.txt temp.txt

