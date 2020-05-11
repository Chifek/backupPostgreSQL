#!/bin/sh
PATH=/etc:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

PGPASSWORD=passwordForPostgres
export PGPASSWORD
pathB=/path/to/backup/folder
dbUser=databaseUser
emailTo=yourEmail@gmail.com
database=databaseName
files=pgsql_$(date "+%Y-%m-%d %H:%M:%S").sql.gz
filesForEmail=/path/to/backup/folder/$files

echo "Database dump is complete at " $(date "+%Y-%m-%d %H:%M:%S") >> /path/to/log/file/logs.txt

find $pathB \( -name "*-1[^5].*" -o -name "*-[023]?.*" \) -ctime +61 -delete

pg_dump -U $dbUser $database | gzip > filesForEmail

sleep 10

echo "Attachment from server" | mutt -s "Fresh backup (⌒‿⌒)" -a "$filesForEmail" -- emailTo@domain.com

sleep 5

unset PGPASSWORD