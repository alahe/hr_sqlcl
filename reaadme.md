# Test SQLcl PROJECT command for CI/CD  


### documents
 - [Oracle SQLcl ](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/index.html)
 - [Database Application CI/CD](https://docs.oracle.com/en/database/oracle/sql-developer-command-line/24.3/sqcug/database-application-ci-cd.html)
 - [The Biggest Database Challenge - App Deployment](https://youtu.be/qCc-f24HLCU?si=_BKArmUUS9VvtFUy)


 1. käivitan sqlcl
```sql
sql /nolog
```
2. määran ära walleti asukoha
```sql
set cloudconfig /Users/allanlahe/Oracle/network/admin/DEVADB23AI/Wallet_DEVADB23AI.zip
set cloudconfig /Users/allanlahe/Oracle/network/admin/DEVADB/Wallet_DEVADB.zip
```
3. ühendan basiga
```sql
connect HR/H_Welcome_123@devadb23ai_tp
connect HR/H_Welcome_123@devadb_tp
```
4. määran ära kodu kataloogi
```sql
cd /Users/allanlahe/GIT/alis_sqlcl_lb/HR
cd /Users/allanlahe/GIT
```
5. konrollin kas olen õiges kohas
```sql
pwd
``` 
6. This command creates the project and the makeroot option creates a project folder.
```sql
project init -name hr_lb_project -schemas HR -makeroot
```
7. export from DB all aobjects
```sql
project export
```



. Create data files
```sql
project stage add-custom -file-name regions-data.sql
project stage add-custom -file-name locations-data.sql
project stage add-custom -file-name countries-data.sql
project stage add-custom -file-name jobs-data.sql
project stage add-custom -file-name departments-data.sql
project stage add-custom -file-name employees-data.sql
project stage add-custom -file-name job-history-data.sql
```
