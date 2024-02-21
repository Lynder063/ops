#!/bin/bash

# Čekání na zadání 2 čísel
read -p "Zadejte první číslo: " cislo1
read -p "Zadejte druhé číslo: " cislo2

# Výpočet a výpis výsledku
vysledek=$((cislo1 * cislo2))
echo "Výsledek násobení: $vysledek"

