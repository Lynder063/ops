#!/bin/bash

# Vytvoření pomocného souboru pro liché a sudé řádky
awk 'NR%2==0' jmena.txt > suda.jmena.txt
awk 'NR%2!=0' jmena.txt > licha.jmena.txt

# Přidání značek "s" pro sudé řádky a volného řádku za každým řádkem
sed 's/^/s /;G' suda.jmena.txt > temp.txt

# Odstranění každého druhého řádku
sed '0~2d' licha.jmena.txt >> temp.txt

# Vypíše řádku číslo 3
sed -n '3p' jmena.txt >> temp.txt

# Zobrazení výsledného souboru
cat temp.txt

# Smazání pomocných souborů
rm suda.jmena.txt licha.jmena.txt temp.txt

