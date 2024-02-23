# Instalace MYSQL/MARIADB
> [!WARNING]
> Na instalaci balíčku nebo upgrade systému musíte být buď přihlášený jako **sudo** a nebo váš uživatel musí mít **sudo oprávnění**

- Aktualizujeme systém
```bash
sudo dnf update -y
```

- Instalace MariaDB *(vybral jsem si MariaDB a jsou to stejné věci a fungují stejně)*

```bash
sudo dnf install mariadb-server mariadb-client
```

- Spustím službu *(deamona)* MariaDB

```bash
sudo systemctl now mariadb --now
```

- Provedeme základní nastavené DB pomocí tohoto příkazu
```bash
sudo mysql_secure_installation
```

# Vytvoření DB s vaším loginem a přiřadíme uživatele

- Připojíme se do DB
```bash
sudo mysql -u root -p
```

- Vytvoříme novou DB
```sql
CREATE DATABASE vas_login;
```

- Uděláme screenshot databáze s naším jménem
```sql
SHOW DATABASES;
```

![Úkol 1](../assests/cv8/ukol1.png) 


- Uděláme uživatele s naším loginem
> [!TIP]
> Pro heslo k uživateli a do DB, doporučuji `Password1*`

```sql
CREATE USER 'vas_login'@'localhost' IDENTIFIED BY 'vas_heslo';
```

- Přiřadíme uživatele k DB
```sql
GRANT ALL PRIVILEGES ON vas_login.* TO 'vas_login'@'localhost';
```

- Uděláme screenshot příkazu který proběhl

![Úkol 2](../assests/cv8/ukol2.png) 

- Reloadneme privilegia *(aby to fungovalo)*

```sql
FLUSH PRIVILEGES;
```

- Zkontroluje jestli jsme správně přiřadili pravomoce
```sql
SHOW GRANTS FOR 'malinda'@'localhost';
```
![Úkol 3](../assests/cv8/ukol3.png) 


- A teď se musíme odhlásit z **ROOT** a

```sql
EXIT;
```

- A přlásíme se jako náš nově vytvořený uživatel

```bash
sudo mysql -u {vas_login} -p
```
- A použijeme tu databázi co jsme vytvořili
```sql
USE {vas_login};
```
![Úkol 4](../assests/cv8/ukol4.png) 

# Instalace apache s php

- Instalujeme balíčky
```bash
sudo dnf install httpd php php-mysqlnd
```

- Spustíme Deamona
```bash
sudo systemctl enable httpd --now
```

- Vytvoříme soubor `info.php`
```bash
sudo nano /var/www/html/info.php
```

- A napíšeme 
```php
<?php phpinfo(); ?>
```

![Úkol 5](../assests/cv8/ukol5.png)

# Instalace phpMyAdmin

- Pro instalaci potřebujeme, přidat EPEL repositář

```bash
sudo dnf install epel-release
```

- Nainstalujeme
```bash
sudo dnf install phpmyadmin
```

- Restartujeme Deamona
```bash
sudo systemctl restart httpd
```
![Úkol 6](../assests/cv8/ukol6.png) 

- Přihlásime se

![Úkol 7](../assests/cv8/ukol7.png) 



