# Database Migration

Laravel provide a simpler way to manage database as it changes with the application. This is called Migration.

In general, we

* Create Migration
* Run Migration
* Rollback Migration

## Creating Migration

We can use `migrate` task of Laravel's Artisan tool to create new migration file.

```
php artisan migrate:make create_user_table --table="users" --create
```

This will create a file with name `<timestamp_create_user_table.php` in folder `app/database/migrations`.

## Running Migration

```
php artisan migrate
```

## Rollback Migration

```
php artisan migrate:rollback
```