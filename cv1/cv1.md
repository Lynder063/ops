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
