# MySQL

## New user and database

```bash
CREATE DATABASE newdatabase;
CREATE USER ‘newuser’@’localhost’ IDENTIFIED BY ‘MySecretPassword’;
GRANT ALL PRIVILEGES ON newdatabase.* TO ‘newuser’@’localhost’;
FLUSH PRIVILEGES;
```
