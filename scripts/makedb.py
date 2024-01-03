#!/usr/bin/env python3

# This script creates the ScholarDB database and populates it with data.
# It can create either a SQLite or MySQL database.

# Requirements:
# sqlite3 (for SQLite database), mysql-connector-python (for MySQL database),

# Usage:
# make sure to be in the same directory as sql files
# python ../scripts/makedb.py (for Unix)
# python ..\scripts\makedb.py (for Windows)

import sqlite3
import mysql.connector


def create_sqlite_database():
    try:
        conn = sqlite3.connect('scholardb.db')
        cursor = conn.cursor()

        # TODO: fix sqlite3.IntegrityError: FOREIGN KEY constraint failed
        # Enable foreign key constraints
        # cursor.execute("PRAGMA foreign_keys = ON")

        with open('scholardb-schema.sql', 'r') as schema_file:
            schema_script = schema_file.read()
            cursor.executescript(schema_script)

        with open('scholardb-data.sql', 'r') as data_file:
            data_script = data_file.read()
            cursor.executescript(data_script)

        conn.commit()
        conn.close()
        print("SQLite database created successfully!")

    except sqlite3.Error as e:
        print(f"Error creating SQLite database: {e}")


def create_mysql_database():
    try:
        conn = mysql.connector.connect(
            host='localhost',
            user='your_username',
            password='your_password',
            database='scholardb_mysql'
        )
        cursor = conn.cursor()

        with open('scholardb-schema.sql', 'r') as schema_file:
            schema_script = schema_file.read()
            cursor.execute(schema_script, multi=True)

        with open('scholardb-data.sql', 'r') as data_file:
            data_script = data_file.read()
            cursor.execute(data_script, multi=True)

        conn.commit()
        conn.close()
        print("MySQL database created successfully!")

    except mysql.connector.Error as e:
        print(f"Error creating MySQL database: {e}")


def main():
    print("Choose the database to create:")
    print("1. SQLite")
    print("2. MySQL")
    choice = input("Enter your choice (1/2): ")

    if choice == '1':
        create_sqlite_database()
    elif choice == '2':
        create_mysql_database()
    else:
        print("Invalid choice. Please enter 1 or 2.")


if __name__ == "__main__":
    main()
