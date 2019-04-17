# backupPostgreSQL
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

That's all!
