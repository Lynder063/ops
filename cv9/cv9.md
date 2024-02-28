# Nainstalujeme SAMBA

> [!WARNING]
> Musíme být root abychom mohli aktualizovat a instalovat

- Aktualizujeme celý systém
```bash
dnf update
```

- Nainstalujeme `Sambu`
```bash
dnf install samba
```

# Vytvoříme složky a nastavíme práva

> [!WARNING]
> Jelikož jdeme do složky `/var` tak musíme být pod **sudem**

- Vytvoříme složku s naším loginem

```bash
sudo mkdir -p /var/samba/vas_login
```

- Nastavíme pravomoce
```bash
sudo chmod -R 777 /var/samba/vas_login
```

- A teď musíme modifikovat konfigurační soubor Samby

```bash
nano /etc/samba/smb.conf
```

- A nakonec configurace přidáme sekci pro naší složku

```conf
[vas_login]
   path = /var/samba/vas_login
   valid users = vas_login
   read only = no
   guest ok = yes
   guest only = yes
   create mask = 0777
   directory mask = 0777
```
