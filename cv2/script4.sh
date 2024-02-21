#!/bin/bash

sh_soubory=$(ls -1 *.sh 2>/dev/null | wc -l)
echo "Počet souborů s příponou .sh: $sh_soubory"

