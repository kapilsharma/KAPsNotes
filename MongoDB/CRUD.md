# CRUD operations.

CRUD is acronym of:

- C: Create
- R: Retrieve/Read
- U: Update
- D: Delete

These are basic operations to work with any database. In this section, we are going to see basic CRUD operation in MongoDB.

We can use these commands from any programming language using mongo db driver or from mongo shell. To start off, lets use mongo shell

## Running mongo server and shell.

As discussed earlier during installation, we must have run command `mongod` in shell to start mongo db server. Then in another shall, type `mongo` to start mongo shell.

## Shell environment.

> After any command in shell, we must press `enter`. This is not specified every time but assumed it is clear.

Mongo shell is a client application for Mongo DB which allow us to run many commands, including all CRUD commands. Just type `help` to list all the possible commands.

To start off, there is a command `show dbs` & `show collections`.

What is db and collection? During introductions, we already discussed mongo db stores data in documents, which is equivalent to rows in RDBMS. These documents are stored in collections. Collections in mongo DB are equivalent to tables in RDBMS. One application may have multiple collections to store different type of data.

Lets try to see available database in MongoDB by typing command `show dbs`. If you have fresh mongo installation, it will show two databases; admin and local.

I'm using `KapsTest` database in these notes but you can select any name, just replace `KapsTest` with the name you selected.

In mongo db, we do not need to create database. Just use command will change the database. Thus, `use KapsTest` command will instruct Mongo that all future operation will be done on `KapsTest` database. However, please note, database will be created when we first insert data in it. Please run command

```bash
use KapsTest
```

Also note, Mongo shell have a `db` variable, which store the database name we are using. Thus, we need not to give database name every time.

### Namespace

In mongo shell, we generally use `db.collection-name` for specifying a specific collection. This is called namespace. Thus, `KapsTest.MyCollection` means collection `MyCollection` with in `KapsTest` database. Since `db` holds the reference to the database currently in use, we can also use `db.Mycollection` after `use KapsTest` command.
