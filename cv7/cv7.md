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


