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

```bash
sed G jmena.txt
```

# Na začátky desáté až dvacáté řádky souboru jmena.txt přidejte znak #. 

```bash
sed '10,20 s/^/#/' jmena.txt
```

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

# Procesy na pozadí, popředí gedit, &, bg, fg, ^+Z, jobs

- Spustíme Textový editor GEdit


```bash
gedit &
```
![Úkol 11](../assests/cv6/ukol11_1.png)

- Dáme process do pozadí


```bash
bg %1
```

![Úkol 11](../assests/cv6/ukol11_2.png)

- Přeneseme proces do popředí

```bash
fg %1
```

![Úkol 11](../assests/cv6/ukol11_3.png) 

# Sledujte procesy v reálném času top

![Úkol 12](../assests/cv6/ukol12.png)

# Pojmenovaná roura

- Vytvoříme routu

```bash
mkfifo roura
```

![Úkol 13_1](../assests/cv6/ukol13_1.png)

- Načtení datumu do routy

> [!WARNING]
> Je nutné aby bežela na pozadí

```bash
date > roura &
```

![Úkol 13_2](../assests/cv6/ukol13_2.png) 

- Zobrazení dat

```bash
cat roura
```

![Úkol 13_3](../assests/cv6/ukol13_3.png) 
