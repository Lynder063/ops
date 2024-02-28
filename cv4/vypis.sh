#!/bin/bash

# Adresář, jehož obsah chceme zkopírovat
source_dir="/home/malinda"

# Soubor, do kterého chceme zkopírovat výpis obsahu adresáře
target_file="/home/malinda/vypis.txt"

# Zkopírování obsahu adresáře do cílového souboru
ls -l "$source_dir" > "$target_file"

# Zpráva o dokončení kopírování
echo "Výpis obsahu adresáře byl zkopírován do souboru: $target_file"

