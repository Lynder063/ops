#!/bin/bash

# Vytvoření nového uživatele
# "krystofjebuh"

sudo adduser krystofjebuh

# Čekání na přihlášení nového uživatele
until who | grep -q krystofjebuh; do
    sleep 1
done

echo "*** Právě se přihlásil uživatel krystofjebuh ***"
