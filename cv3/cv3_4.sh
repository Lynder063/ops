#!/bin/bash


# Čekání na přihlášení nového uživatele
until who | grep -q krystofjebuh; do
    sleep 1
done

echo "*** Právě se přihlásil uživatel krystofjebuh ***"
