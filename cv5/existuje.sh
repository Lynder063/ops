#!/bin/bash

# Zjistění existence souboru
if [ -e "$1" ]; then
    echo "existuje"
else
    echo "neexistuje"
fi

