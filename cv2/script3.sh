#!/bin/bash

if grep -qE 'Jirka|Petr' jmena.txt; then
    echo "V souboru je Jirka nebo Petr."
else
    echo "V souboru není Jirka ani Petr."
fi

