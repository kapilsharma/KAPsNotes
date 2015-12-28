# Migration columns

|Command | Description|
|--------|------------|
| $table->bigIncrements('id'); | Incrementing ID (primary key) using a “UNSIGNED BIG INTEGER” equivalent. |
| $table->bigInteger('votes'); | BIGINT equivalent for the database. |
| $table->binary('data'); | BLOB equivalent for the database. |
| $table->boolean('confirmed'); | BOOLEAN equivalent for the database. |
| $table->char('name',4); | CHAR equivalent with a length. |
| $table->date('created_at'); | DATE equivalent for the database. |
| $table->dateTime('created_at'); | DATETIME equivalent for the database. |
| $table- >decimal('amount', 5, 2); | DECIMAL equivalent with a precision and scale. |
| $table->double('column', 15, 8); | DOUBLE equivalent with precision, 15 digits in total and 8 after the decimal point. |
| $table->enum('choices', ['foo', 'bar']); | ENUM equivalent for the database. |
| $table- >float('amount'); | FLOAT equivalent for the database. |
| $table->increments('id'); | Incrementing ID (primary key) using a “UNSIGNED INTEGER” equivalent. |
| $table->integer('votes'); | IN- TEGER equivalent for the database. |
| $table->json('options'); | JSON equivalent for the database. |
| $table->jsonb('options'); | JSONB equivalent for the database. |
| $table->longText('description'); | LONGTEXT equivalent for the database. |
| $table->mediumInteger('numbers'); | MEDIUMINT equivalent for the database. |
| $table->mediumText('description'); | MEDIUMTEXT equivalent for the database. |
| $table->morphs('taggable'); | Adds INTEGER taggable_id and STRING taggable_type. |
| $table->nullableTimestamps(); | Same as timestamps(), except allows NULLs. |
| $table->rememberToken(); | Adds remember_token as VARCHAR(100) NULL. |
| $table->smallInteger('votes'); | SMALLINT equivalent for the database. |
| $table->softDeletes(); | Adds deleted_at column for soft deletes. |
| $table->string('email'); | VARCHAR equivalent column. |
| $table->string('name', 100); | VARCHAR equivalent with a length. |
| $table->text('description'); | TEXT equiva- lent for the database. |
| $table->time('sunrise'); | TIME equivalent for the database. |
| $table- >tinyInteger('numbers'); | TINYINT equivalent for the database. |
| $table->timestamp('added_- on'); | TIMESTAMP equivalent for the database. |
| $table->timestamps(); | Adds created_at and updated_at columns.
