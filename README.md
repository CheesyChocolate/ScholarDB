# ScholarDB
ScholarDB is an educational database system designed to manage student enrollments, course materials, grades, and submissions within a learning management environment. It facilitates efficient data handling for educational institutions or platforms, promoting seamless management of academic resources and student interactions.

# Usage

The database is designed to be used fully compatible with SQLite and MySQL.

## Using script

move to the directory where the sql files are located and run the following command:

for Unix:

```bash
python ../scripts/makedb.py
```

for Windows:

```bash
python ..\scripts\makedb.py
```

Then follow the instructions.

## Manual

### MySQL

The sql file `scholardb-schema.sql` contains the database schema and sample data. To create the database, run the following command:

```bash
mysql -u root -p < scholardb-schema.sql
```

or in MySQL:

```sql
source scholardb-schema.sql
```

The sql file `scholardb-data.sql` contains sample data. To populate the database, run the following command:

```bash
mysql -u root -p < scholardb-data.sql
```

or in MySQL:

```sql
source scholardb-data.sql
```

### SQLite

To use foreign key constraints in SQLite, run the following command:

```sql
PRAGMA foreign_keys = ON;
```

- The sql file `scholardb-schema.sql` contains the database schema and sample data. To create the database, run the following command:

```bash
sqlite3 scholardb.db < scholardb-schema.sql
```

or in SQLite:

```sql
.read scholardb-schema.sql
```

- The sql file `scholardb-data.sql` contains sample data. To populate the database, run the following command:

```bash
sqlite3 scholardb.db < scholardb-data.sql
```

or in SQLite:

```sql
.read scholardb-data.sql
```

# Project Details

## Database Schema (20 Points)
- [x] Create 5-7 entities with 1:1, 1:M, and M:N relationships.
- [x] Define primary keys for each table.
- [x] Implement foreign keys using ON DELETE SET NULL and ON DELETE CASCADE.
- [x] Populate each table with at least 20 tuples.

## Simple Queries (35 Points)
- [x] Insert 3 tuples into different tables.
- [x] Insert 5 tuples into the same table.
- [x] Update 3 tuples in different tables.
- [x] Delete 3 tuples in different tables.
- [x] Add CHECK constraint.
- [x] Create 3 queries using WHERE clause and comparison operators.
- [x] Create 3 queries using WHERE clause and arithmetic operators.
- [x] Create 3 queries using WHERE clause and logical operators.
- [x] Create 3 queries using special operators (BETWEEN, IS NULL, LIKE, IN, EXISTS).
- [x] Create 3 queries using ORDER BY clause.
- [x] Create 3 queries using DISTINCT clause.
- [x] Create 3 queries using String Functions.
- [x] Create 3 queries using Numeric Functions.
- [x] Create 3 queries using Date Functions.
- [x] Create 3 queries using aggregate functions (COUNT, MIN, MAX, SUM, AVG).
- [x] Use LIMIT clause.
- [x] Use ROLLUP.

## Queries by Grouping (10 Points)
- [x] Create 3 queries using GROUP BY clause.
- [x] Create 3 queries using aggregate functions (COUNT, MIN, MAX, SUM, AVG).
- [x] Create 3 queries using HAVING clause.

## Advanced Queries (35 Points)
- [x] Create a query using LEFT JOIN.
- [x] Create a query using RIGHT JOIN.
- [x] Create 3 queries joining 2 tables.
- [x] Create 3 queries joining 3 tables.
- [x] Create 3 queries with subqueries in WHERE clause.
- [x] Create 3 queries with subqueries in SELECT columns.
- [x] Copy one table's structure and data to a new table.
- [x] Create a VIEW.
- [x] Create a stored procedure and call it.
- [x] Create 3 triggers and provide examples for their execution.
