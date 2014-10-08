# Migration

## Migrate Make

Used to create migration file for creating/updating DB tables.

To create a new table

```
php artisan migrate:make create_users_table --table="users" --create
```

To update an existing table

```
php artisan migrate:make add_email_to_users_table -- table="users"
```

First command will create file `<timestamp>_create_users_table.php` in folder `app/database/migration`.

This file contain two methods; `up` and `down`. `up` method will be called while migration while `down` method is called during rollback. Moe datils about them in a monent.

## Running migration

```
php atrisan migrate
```

## Roleback Migration

```
php artisan migrate:rollback
```

## Updating Migration file

Docs URL: [http://laravel.com/docs/4.2/migrations]