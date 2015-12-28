# Migration

Laravel used migration to crate database. These migrations are useful to share share whole database schema with your team. So we can assume:

> Migrations are like version control for your database, allowing a team to easily modify and share the application’s database schema. Migrations are typically paired with Laravel’s schema builder to easily build your application’s database schema.
>
> -- Laravel documentation

## Migrate Make

Used to create migration file for creating/updating Database tables.

To create a new table

```
php artisan make:migration create_users_table --create="users"
```

To update an existing table

```
php artisan make:migration add_email_to_users_table -- table="users"
```

First command will create file `<timestamp>_create_users_table.php` in folder `app/database/migration`.

This file contain two methods; `up` and `down`. `up` method will be called while migration and `down` method is called during rollback.

## Migration file

Command `php artisan make:migration create_magazines_table --create="magazines"` will create a file named `<timestamp>_create_magazines_table.php` with following code

```php
<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMagazinesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('magazines', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('magazines');
    }
}
```

Here `down` method is ready, which will actually drop table while rollback. We will actually need to update `up` method to actually create required columns. Let's update `up` method as follow:

```php
<?PHP
public function up()
{
    Schema::create('magazines', function (Blueprint $table) {
        $table->increments('id');
        $table->string('name', 20);
        $table->integer('owner')->unsigned();
        $table->timestamps();
        $table->softDeletes();
        $table->unique(array('name'));
        $table->foreign('owner')->references('id')->on('users');
    });
}
```

In above code, `increments('id')` creates column with Incrementing ID (primary key) using a “UNSIGNED INTEGER” equivalent. Name of the column will be `id`.

`string('name', 20)` create a column 'name' with VARCHAR(20).

For more details about the columns, please refer
[migration columns page](php/database/migration-columns.md).

## Running migration

```
php atrisan migrate
```

### Forcing migration to run

Some migration operations could be destructive and may cause you to lose data. In order to protect running these commands in production, we will be prompted for confirmation. To force the commands to run without a prompt, use the --force flag:

```
php atrisan migrate --force
```

However, I personally prefer not to use `--force` flag. Better we confirm exception during prompt.

## Rollback Migration

```
php artisan migrate:rollback
```

This command will rollback only last migration. However last migration might contain migration of multiple migration files.

### Rollback all migrations.

If we want to rollback all the migrations, we can use

```
php artisan migrate:reset
```
