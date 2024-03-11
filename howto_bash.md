## Basic

- Pro vypsání do konzole používáme `echo`
- Pro scripty používáme koncovku `.sh`

První script na **Hello world**

```bash
# Vypíše Hello world při spuštění
echo "Hello world"
```

- Měli bychom specifikovat jaký shell používáme
- Můžeme to zjistit pomocí příkazu `echo $SHELL`
- Kde `$SHELL` je globalní proměná a vždy nám vrátí cestu k našemu **SHELL**u

Takže bychom měli začatátek každého scriptu vložit `#!/bin/bash` a by se script pouštěl v **bash**

> [!WARNING]
> Abychom script tak musíme scriptu přídat oprávnění na `execute`

## Proměnné

Když chceme zavolat proměnou tak používáme `$`

- Příklad

```bash
# Definujeme nějakou proměnou
MOJE_JMENO=Lynder063

# A teď kdybych chtěl vypsat proměnou tak musím použít $
echo $MOJE_JMENO
```

- Taky se můžeme ptát uživatele na hodnoty

```bash
echo "Kolik ti je let?"
read vek
echo "Jaké jsi pohlavý?"
read sex

echo Je ti $vek a jsi $sex.
```

# Positional argument

```bash
#!/bin/bash

echo Ahoj $1 $2
```

A když bychom teď chtěli spustit script

```bash
$ ./pos_argument.sh Kryštof Jahoda
```

Tak nám to do `$1` uloží `Kryštof` a do `$2` je `Jahoda` a takhle by to bylo do nekonečna

## Piping

- Používáme pokud chce filtrovat output
- Takže pošleme vysledek do pipe

```bash
#!/bin/bash

# Takhle nám to vypíše všechny složky a soubory v /usr/bin/
ls -l /usr/bin/

# Ale když tam dáme pipe na filtrování slova bash
# tak nám to vypíše jen soubory a složky obsahující `bash`

ls -l /usr/bin/ | grep bash
```

## Ukládání

- Když chceme uložit výstup do souboru použijeme
- `>` tento symbol uloží výstup do souboru a přepíše celý soubor

`echo Hello world! > hello.txt`

- `>>` a tento symbol vypíše do souboru a případně přídá řádek do existujícího souboru
  `echo Hello World! >> hello.txt`

## Vkládání

- Pokud chceme do nějakého příkazu vložit něco
- Použijeme `<`

- Můžeme v kládát více věcí najednou pomocí blokového zadávání
- Která řekně že od začátku nějaké slova po konec stejného slova všechno vlož, většinou se používá **EOF**
- A jak mile napíšeme na konec EOF tak se vkládání ukončí a vloží se

```bash
cat << EOF
> Ně
> Nějaké slovo
> Ahoj vole
> :(
> Hejbej mindžou
> EOF
```

- Pak můžeme vložit celý string pomocí `<<<`

```bash
wc -w <<< "Ahoj počítačí slov"
```

## Test

- Porovnáváme hodnoty
  `[ hello = hello]`
- Toto by mělo vrátit hodnotu **0** jako úspěšné ukončení

## If/elif/else

- Používáme s **Test**
- Funguje jako normálni If/elif/else
- Uzavíráme s `if`

### Jak se porovnává

- `STRING1` = `STRING2` - **If** bude pravda pokud `STRING1` a `STRING2` jsou si **rovny**.
- `STRING1` != `STRING2` - **If** bude pravda pokud `STRING1` a `STRING2` jsi **nejsou rovny**.
- `INTEGER1` -eq `INTEGER2` - **If** bude pravda pokud `INTEGER1` a `INTEGER2` jsou si **rovny**.
- `INTEGER1` -gt `INTEGER2` - **If** bude pravda pokud `INTEGER1` je **větší než** `INTEGER2`.
- `INTEGER1` -lt `INTEGER2` - **If** bude pravda pokud `INTEGER1` je **menší než** `INTEGER2`.
- `INTEGER1` -ge `INTEGER2` - **If** bude pravda pokud `INTEGER1` je **rovno nebo větší** než `INTEGER2`.
- `INTEGER1` -le `INTEGER2` - **If** bude pravda pokud `INTEGER1` je **rovno nebo menší** než `INTEGER2`

```bash
#!/bin/bash

echo -n "Zadej číslo: "
read VAR

if [[ $VAR -gt 10 ]]
then
  echo "Číslo je větší než 10!"
else
echo "Je menší než 10!"
fi
```

## Case statements

- Lepší jak If/elif/else
- Dá se porovnávat více hodnot najednou
- Hvězdička nám nahrazuje `default`
- Každý statement musí končít s `;;`

```bash
case EXPRESSION in

  PATTERN_1)
    STATEMENTS
    ;;

  PATTERN_2)
    STATEMENTS
    ;;

  PATTERN_N)
    STATEMENTS
    ;;

  *)
    STATEMENTS
    ;;
esac
```

## Arrays (listy)

```bash
MUJ_PRVNI_LIST=(jedna dva tri ctyri)
```

- Pokud chceme vypsat celý Array, `echo  ${MUJ_PRVNI_LIST[@]}`
- Pokud chceme vypsat specifický záznam v listu tak místo `@` použijeme pozici v listu

## Loops

```bash
MUJ_PRVNI_LIST=(jedna dva tri ctyri)
```

- Tak to můžeme vypsat pomocí loopu

### While loop

```bash
while [ <some test> ]
do
  <commands>
done
```

## Util loop

```bash
until [ <some test> ]
do
  <commands>
done
```

### For loop

```bash
for var in <list>
do
 <commands>
done
```

## Zdroje

- [Case statement](https://linuxize.com/post/bash-case-statement/)
- [Youtube tutorial](https://youtu.be/tK9Oc6AEnR4?si=V17Tf5NrTH8sNwKp)
