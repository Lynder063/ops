#!/bin/bash

# Přejmenuj soubory v adresáři cv5
for file in cv5/*; do
    mv "$file" "${file}.html"
done

