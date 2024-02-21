#!/bin/bash

# Zjištění nainstalovaných balíčků začínajících na "php"
php_packages=$(rpm -qa | grep '^php')

# Pokud žádný balíček nezačíná na "php", nainstalujte ho
if [ -z "$php_packages" ]; then
    yum install php
else
    echo "Nainstalované balíčky začínající na 'php':"
    echo "$php_packages"
fi

