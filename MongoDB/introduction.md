# Mongo DB introduction

- Mongo DB is a document based NoSQL database.
- Comparison with RDBMS

| RDBMS             | Mongo DB equivalent  |
|-------------------|----------------------|
| Database          | Database             |
| Table             | Collection           |
| Row               | Document             |

- Mongo collections are managed in database. A database can contain one or more collections. It is equivalent to table of relational database.
- Collections contains document, which is equivalent to row of RDBMS tables.
- Document is basically JSON document. Since JSON can contain many fields, and two JSON document can have different key-value pairs, MongoDB is basically schema less. That is, unlike RDBMS, there is no fixed structure of a collection (table).
    - Internally, Mongo DB store data as BSON. BSON is designed to be:
        - Lightweight: Means space required to store data is minimum.
        - Traversable: Needed to support different writing, reading, indexing data.
        - Efficient: Means encoding/decoding data between BSON/JSON is faster.
    - BSON specs can be found at [bsonspec.org](http://bsonspec.org).
    - BSON also allow to fulfill some shortcoming of JSON. For example, JSON do not support date data type or cannot distinguish between integer and floting point number but BSON can. 
- Mongo DB, unlike RDBMS, do not support relationship between tables (collections).
    - This allow to scale up & scale out through sharding feature.
    - It allow Mongo DB to become faster as relations makes the query slower.
    - However, we must learn how to save our data without relationships.
