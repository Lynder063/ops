#!/bin/bash

# Kontrola argumentu
# '$#' je proměná co kontroluje počet argumentu
# Pokud počet argumentu bude cokoliv než 1
# Automaticky to vyhodí Chybu a vrátí 'exit 1'

if [ $# -ne 1 ]; then
	echo "Chyba: Zadejte název souboru jako argument!"
	exit 1
fi

# Kontrola existence souboru
# '-f' testuje pokud soubor existuje
# A když ne vypíše se chyba a exit 1, jako v předchozím 'if'

if [ ! -f "$1" ]; then
	echo "Chyba: Soubor $1 neexistuje!"
	exit 1
fi

# Vypsání čísla řádku následujícího po posledním

last_line=$(wc -l <"$1")
# 'wc' je linux příkaz na získaní počtu řádku
# argument '-l' vypíše jen počet řádků
# Našem případě se to uloží do proměné 'last_line'

next_line=$((last_line + 1))
# Tady se udělá jen proměná která přičte 1 k proměné last_line

echo "Číslo řádku po posledním: $next_line"
# A pak proměnou $next_line vypíšeme
