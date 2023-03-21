#!/usr/bin/python3

import MySQLdb
from sys import argv

def main():
    db = MySQLdb.connect(host = "localhost", port="3306",username = argv[1],password=argv[2],dbname=argv[3])

    cursor = db.cursor()
    cursor.execute("SELECT * FROM states WHERE name LIKE BINARY 'N%' ORDER BY id ASC")

    rows = cursor.fetchall()

    for row in rows:
        print("{},{}".format(row[0], row[1]))

    db.close()

if "__name__" == "__main__":
    main()
    

