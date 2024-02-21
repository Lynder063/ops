#!/bin/bash

# Zrušení přípony html u všech souborů v aktuálním adresáři
for file in *.html; do
    mv -- "$file" "${file%.html}"
done

echo "Přípona html byla úspěšně zrušena u všech souborů."

