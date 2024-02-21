# Cvičení 1

> [!WARNING]
> Toto cvičení jsem byl nucen předělat znovu jelikož nemám přístup k originálním souborům.
> Takže sem hodím jen přikazy jak toho docílit

## Vytvořte nového uživatele s nazvem vašeho_loginu a nastavte mu heslo: Password1*

- Přepneme se do sudo

```bash
su -i
```
- Vytvoříme nového uživatele
```bash
useradd {vas_login}
```
- A přidáme požadované heslo `Password1*`
```bash
passwd {vas_login}
```
> [!NOTE]
> Po zadání `passwd` příkazu musíme zadat `Password1*`

## Přihlaste se jako vas-login. V adresari /home/login  vytvořte pět souborů s těmito právy:

a) text1 rwx r-x rwx
b) text2 r- - rwx  -w-
c) text3  rwx rwx rwx
d) text4 r-x - -x r- -
e) text5.. rwx  - -x rwx




- Příhlásíme se
```bash
su {vas_login}
```

- Musíme se přepnout do `/home/{login}`
```bash
cd $HOME
```
**NEBO**
```bash
cd /home/{vas_login}
```

- Vytvoříme pět souboru
```bash
chmod 751 text1
chmod 704 text2
chmod 777 text3
chmod 511 text4
chmod 762 text5
```

## V domovském adresáři uživatele vas_login vytvořte adresář pokus s těmito právy rwxr--r--.
> [!NOTE]
> Do tohoto adresáře zkopírujte soubor text1 a přepněte se do adresáře pokus.
Změňte přístupová práva k adresáři pokus takto: r - - r - -r - -.
Jak se projeví odebrání práva x všem uživatelům?
Právo x adresáři pokus opět vraťte.


- Vytvořte adresář
```bash
mkdir pokus
```

- Nastavíme práva
```bash
chmod 744 pokus
```

- Zkopírujeme soubor `text1` do složky `pokus` a přepneme se do složky `pokus`
```bash
cp text1 pokus/
cd pokus/
```
