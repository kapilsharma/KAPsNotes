# Keyspace and table

## Keyspace

Keyspace in cassandra is equivalent to schema in RDBMS. Major purpose of keyspace in
cassandra is to define `replication strategy`.

There are two different types of replication strategy in Cassandra.

* Simple Strategy (Used for prototyping)
* Network Topology Strategy.

### Creating Keyspace.

```
CREATE KEYSPACE development
WITH replication = {
    'class': 'simplestrategy',
    replication-facter': 3
}
```

### Drop Keyspace.

```
DROP KEYSPACE development
```

### Assign default Keyspace.

```
USE keyspace_name
```

We can use any keyspace with notation `keyspace.table`.

### List keyspace

```
DESCRIBE keyspaces;
```

## Table

We can create tables in two ways:

* Primary key defined inline

```
CREATE TABLE emp (
    empid INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARVHAR,
    department VARCHAR
);
```

* Postfix notation (Used for defining complex primary keys.

```
CREATE TABLE emp (
    empid INT,
    first_name VARCHAR,
    last_name VARVHAR,
    department VARCHAR,
    PRIMARY KEY (name)
);
```

### Parts of primary keys

Primary key contains two parts:

* Partition key & 
* clustering columns

There are four ways of defining Primary Key.

* Simple partition key, no clustering columns

```
PRIMARY KEY ( partition_key )
```

* Composite partition key, no clustering columns

```
PRIMARY KEY ( (partition_key1, partition_key2) )
```

* Simple primary key and clustering columns

```
PRIMARY KEY ( partition_key, clustering_column1, ... , clustering_columnN )
```

* Composite primary key and clustering columns

```
PRIMARY KEY ( (partition_kay1, partition_key2), clustering_column1, ... , clustering_columnN )
```

### Drop table

```
DROP TABLE <table_name>
```

### Alter table

* Add columns

```
ALTER TABLE <table_name> ADD <column_name> VARCHAR;
```

* Change column datatype

```
ALTER TABLE <table_name> ALTER <column_name> TYPE VARCHAR;
```

* Drop column

```
ALTER TABLE <table_name> DROP <column_name>;
```

### Show tables in a keyspace

```
DESCRIBE tables;
```