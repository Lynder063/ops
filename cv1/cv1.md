# Cvičení 1

> [!WARNING]
> Toto cvičení jsem byl nucen předělat znovu jelikož nemám přístup k originálním souborům.
> Takže sem hodím jen přikazy jak toho docílit

## Vytvořte nového uživatele s nazvem vašeho_loginu a nastavte mu heslo: Password1\*

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

## Přihlaste se jako vas-login. V adresari /home/login vytvořte pět souborů s těmito právy:

a) text1 rwx r-x rwx
b) text2 r- - rwx -w-
c) text3 rwx rwx rwx
d) text4 r-x - -x r- -
e) text5.. rwx - -x rwx

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

> [!IMPORTANT]
> Já všechno dávám v číslech ale je možnost prává nastavovat písmeny

## V domovském adresáři uživatele vas_login vytvořte adresář pokus s těmito právy rwxr--r--.

> [!NOTE]
> Do tohoto adresáře zkopírujte soubor text1 a přepněte se do adresáře pokus.
> Změňte přístupová práva k adresáři pokus takto: r - - r - -r - -.
> Jak se projeví odebrání práva x všem uživatelům?
> Právo x adresáři pokus opět vraťte.

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

- Nastavíme požadovné práva

```bash
chmod 644 ../pokus
```

- Odpověď na otázku je že, **že nebudeme moct cokoliv dělat se složkou**

## Změna vlastníka souboru text5 na root
```bash
sudo chown root text5
```

## Vypsání celé cesty aktuálního adresáře
```bash
pwd
```

## Vytvoření symbolického linku k souboru text3 a ověření, že je symbolický
```bash
ln -s text3 odkaznatext3
ls -l odkaznatext3
```

## Výpis souborů v adresáři /etc podle zadaných kritérií
```bash
cd /etc
ls a*
ls m*f
ls m*b*m*c*f
```

## Spuštění programu mc a zjištění čísla jeho procesu
> [!NOTE]
> Na školní PC a aspoň v mém ročníku nebyl `mc` ani nainstalován!


```bash
mc
pgrep mc
```


## Zrušení procesu Midnight Commander
```bash
kill PID # (kde PID je číslo procesu získané z předchozího příkazu)
```

## Vytvoření souboru adresy v domovském adresáři a zadání obsahu

```bash
cd ~
```
```bash
cat > adresy
Petr Bily 123451
Petra Cerna 123213
Jan Vlk 151122
Jiri Cila 122321
```

A zmáčkneme **Ctrl+D**

## Zobrazení obsahu souboru adresy
```bash
cat adresy
```

## Výpis řádků souboru obsahujících slovo "Petr"
```bash
grep Petr adresy
``` 

# Výpis řádků souboru obsahujících "Petr Bily"
```bash
grep "Petr Bily" adresy
```

## Výpis řádků souboru, které neobsahují slovo "Petr"
```bash
grep -v Petr adresy
```

## Výpis řádků souboru obsahujících písmeno "J" a neobsahujících "V"
```bash
grep "J" adresy | grep -v "V"
```

## Změna malých písmen na velká v souboru adresy a uložení do souboru adresy2

```bash
tr '[:lower:]' '[:upper:]' < adresy > adresy2
```
> [!NOTE]
> Omlouvám se že ke konci je to tak odfláké ale už jsem neměl nervy!

