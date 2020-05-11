#!/bin/sh
PATH=/etc:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

sudo apt-get update

sleep 2

sudo apt-get install mutt -y

sleep 10

echo "set realname = \"Enter your name\"
set from = \"yuor_mail@yandex.ru\"
set use_from = yes

set imap_user = \"yuor_mail@yandex.ru\"
set imap_pass = \"yourSecretPass\"
set spoolfile = \"imaps://yuor_mail@imap.yandex.ru\"
set folder = \"imaps://imap.yandex.ru:993\"
set record = \"Send\"
set trash = \"Trash\"

set ssl_starttls = yes
set ssl_force_tls = yes
unset imap_passive
set imap_check_subscribed
set mail_check = 60

set smtp_url = \"smtps://yuor_mail@smtp.yandex.ru:465\"
set smtp_pass = \"yourSecretPass\"" >> ~/.muttrc


