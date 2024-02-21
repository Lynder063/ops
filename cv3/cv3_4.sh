#!/bin/bash

# Vytvoření nového uživatele, uživatel se dá vytvořit jen pomocí sudo
# "krystofjebuh"

sudo adduser krystofjebuh

# Čekání na přihlášení nového uživatele
until who | grep -q krystofjebuh; do
    sleep 1
done

echo "*** Právě se přihlásil uživatel krystofjebuh ***"
