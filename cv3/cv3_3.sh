#!/bin/bash

# ss

# Zrušení přípony html u všech souborů v aktuálním adresáři
# Tento cyklus prohledá v aktualní složce všechny soubory co končí .html
# A pak smažeme '.htm' z naleznutých html souborů

for file in *.html; do
	mv -- "$file" "${file%.html}"
done

echo "Přípona html byla úspěšně zrušena u všech souborů."
