#!/bin/bash

# Vytvoření nového uživatele
username="krystofjebuh"
useradd $username

# Nastavení hesla pro nového uživatele
echo "Password1*" | passwd --stdin $username

