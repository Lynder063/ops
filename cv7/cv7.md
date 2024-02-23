# Pomocí příkazu vytvořte soubor se jménem „datum". Do tohoto souboru vložte pomocí příkazu aktuální datum.

```bash
date > datum
```

![Úkol 1](../assests/cv7/ukol1.png)

# Vypište deset největších souborů a pak deset nejmenších souborů v adresáři /etc

- Největší soubor
```bash
ls -lS /etc | head -n 11
```
![Úkol 2_1](../assests/cv7/ukol2_1.png) 

- Nejmenší soubor
```bash
ls -lSr /etc | head -n 11
```

![Úkol 2_2](../assests/cv7/ukol2_2.png)

# V adresáři /usr/bin najděte soubor, který byl modifikován naposledy.

```bash
ls -lt /usr/bin | head -n 2
```

![Úkol 3](../assests/cv7/ukol3.png) 

# Ze souboru studenti.csv (stáhněte si v této lekci) vypište jen první sloupec, tj. sloupec s příjmeními (použijte find, případně cut).

```bash
cut -d ',' -f 1 studenti.csv
```
![Úkol 4](../assests/cv7/ukol4.png)

# dělejte kopii souboru studenti.csv, nahraďte pomocí příkazu středníky pomlčkou a pomocí diff se podívejte, které řádky byly změněny.

```bash
# Udělá se kopie
cp studenti.csv studenti_copy.csv 

# Nahradíme ;, -
sed -i 's/;/-/g' studenti_copy.csv

# Ukážeme rozdíl
diff studenti.csv studenti_copy.csv
```
![Úkol 5](../assests/cv7/ukol5.png)

# Rozdělte příkazem  studenti.csv soubor na kusy po pěti řádcích (split).
```bash
split -l 5 studenti.csv studenti_chunk_
```

![Úkol 6](../assests/cv7/ukol6.png)

# Napište příkaz, který vypíše počet všech (pro vás viditelných) adresářů v podstromu /etc
```bash
find /etc -type d | wc -l
```

![Úkol 7](../assests/cv7/ukol7.png)

# V podstromu adresáře /tmp najděte všechny soubory, které jsou větší než sto kilobyte (find).

```bash
find /tmp -type f -size +100k
```

![Úkol 8](../assests/cv7/ukol8.png)

# Do své složky (home) zkopírujte soubor /etc/passwd, který přejmenujete například na passwd2. V souboru passwd2 odstraňte nějaké řádky. Vytvořte skript, který projde vytvořené uživatele (/etc/passwd)  a  zjistí, rozdíl se souborem passwd2 (diff). Rozdíl se uloží do souboru rozdil.txt. Tedy zjistí, kteří uživatelé jsou v souboru /etc/passwd navíc.  

- ZKopírování souboru ` /etc/passwd`


```bash
cp /etc/passwd ~/passwd2
```

- Odstranímě **nějaké** řádky *(vybral jsem 2 a 5)*

```bash
sed -i '2d;5d' passwd2
```

![Úkol 9_1](../assests/cv7/ukol9_1.png) 

- Pustíme script

![Úkol 9_2](../assests/cv7/ukol9_2.png)

# Pomocí příkazu vypište verzi OS linux (číslo jádra a další informace).

```bash
uname -a
```

![Úkol 10](../assests/cv7/ukol10.png) 
