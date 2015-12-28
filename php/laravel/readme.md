# Setup

- [x] [Homestead](devenv/vagrant/homestead.md)

# Laravel setup

We must first install composer, as we generally use composer to create new project for Laravel.

- [ ] [Composer](php/composer.md)

Once we have composer installed, we can create laravel project using composer.

- [x] [Using global installer](php/laravel/install/global.md)
- [ ] [Using composer create-project](php/laravel/install/create-project.md)

# Basic setup

Once a new laravel project is created, we should do some basic setup steps.

TODO: Add basic setup steps.

# Database

This might be surprise to someone but first thing I generally do before starting any project is to create its database; might not be perfect but at least a basic one.

If this is not the priority list of your project right now, you can skip this section and come back once you are ready for database setup.

Laravel basically use `migrations` and `seeder` to create/update database tables and add initial seed data respectively.

- [ ] [Migration](php/laravel/database/migration.md)
- [ ] [Seeder](php/laravel/database/seeder.md)

## Migration

[Migration](php/laravel/database_migration.md)
