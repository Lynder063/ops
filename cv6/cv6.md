# Napište příkaz, který vypíše vaše aktuální UID.

```bash
id -u
```
![Úkol 1](../assests/cv6/ukol1.png) 

# Napište příkaz, který vypíše seznam skupin, v nichž se nacházíte. 

```bash
groups
```

![Úkol 2](../assests/cv6/ukol2.png)

# Vytvořte soubor jmena.txt s 21 jmény. Z výstupu jmena.txt vypište jen sudé řádky a  na začátky lichých řádek souboru jmena.txt vložte znak „l", na začátky sudých řádek vložte znak „s".

![Úkol 3](../assests/cv6/ukol3.png)

# b za každý řádek přidá volný řádek

???????????????

# Na začátky desáté až dvacáté řádky souboru jmena.txt přidejte znak #. 

????

# Pomocí příkazu najděte soubor jmena.txt v adresáři /home i v podadresářích

```bash
find /home -name "jmena.txt"
```

![Úkol 6](../assests/cv6/ukol6.png) 

# Pomocí příkazu najděte v adresáři /home i v podadresarich všechny soubory začínající j s příponou .txt 
```bash
find /home -type f -name "j*.txt"
```

![Úkol 7](../assests/cv6/ukol7.png)

# Pomocí příkazu najděte v adresáři /home i v podadresářích vše, co bylo změněno před 7 dny.

```bash
find /home -type f -mtime +7
```

![Úkol 8](../assests/cv6/ukol8.png) 

# Zjištění rodičovského procesu

- Spusťte zobrazení procesů


```bash
ps -l
```

![Úkol 9](../assests/cv6/ukol9_1.png) 

- Jaký je rodičovský proces procesu ps?

**Měl by to být uživatelský shell**

# Zobrazte celou stromovou strukturu všech procesů operačního systému.

```bash
pstree
```

![Úkol 10](../assests/cv6/ukol10.png) 
