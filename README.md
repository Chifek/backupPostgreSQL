# backupPostgreSQL
## Run 
```angular2html
sh install.sh
``` 
## for install Mutt automatically. Or see Step 1.


## Step 1
### Install Mutt for email sending

```
sudo apt-get update
sudo apt-get install mutt
```

### Configure file

```
nano ~/.muttrc
```

### Insert next config:

```
set realname = "Enter your name"
set from = "yuor_mail@yandex.ru"
set use_from = yes

set imap_user = "yuor_mail@yandex.ru"
set imap_pass = "yourSecretPass"
set spoolfile = "imaps://yuor_mail@imap.yandex.ru"
set folder = "imaps://imap.yandex.ru:993"
set record = "Send"
set trash = "Trash"

set ssl_starttls = yes
set ssl_force_tls = yes
unset imap_passive
set imap_check_subscribed
set mail_check = 60

set smtp_url = "smtps://yuor_mail@smtp.yandex.ru:465"
set smtp_pass = "yourSecretPass"
```

### For run Mutt you can enter:

```
mutt
```

### Send email from terminal for checking

```angular2html
echo "Test mail" | mutt -s "Mutt subject" -- master@domain.com
```

##Step 2
### backup postgreSQL files via bin/bash

1. Clone this files
2. Need to create file /path/to/logs.txt
3. Open and setup file dump.sh
4. Run command:

```
crontab -e
```

Insert into next line:

```
5 0 * * * /path/to/file/dump.sh
```

After that need run command:

```
chmod +x /path/to/file/dump.sh
```

Enjoy!

@Author: Ismailov Ruslan

@Github: https://github.com/Chifek
