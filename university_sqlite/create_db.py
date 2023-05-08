import sqlite3
import os

from fill_fake_data import main


PATH_TO_DB_FOLDER = os.path.join('DB')
PATH_TO_SQL_TABLES = os.path.join(PATH_TO_DB_FOLDER, 'University_Tables.sql')
PATH_TO_DB = os.path.join(PATH_TO_DB_FOLDER, 'University.db')


def create_db():
    with open(PATH_TO_SQL_TABLES, 'r') as f:
        sql = f.read()

    with sqlite3.connect(PATH_TO_DB) as con:
        cur = con.cursor()
        cur.executescript(sql)


if __name__ == '__main__':
    create_db()
    main()
