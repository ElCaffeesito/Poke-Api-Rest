import sqlite3

dataBase_Name = "pokeDB.db"

def getDB():
    conn = sqlite3.connect(dataBase_Name)
    return conn

def createTables():
    tables = [
        """CREATE TABLE IF NOT EXISTS pokeDB(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
	        name	TEXT NOT NULL,
	        type	TEXT NOT NULL,
	        secondType	TEXT NOT NULL,
	        hpSt	INTEGER NOT NULL,
	        attackSt	INTEGER NOT NULL,
	        deffenseSt	INTEGER NOT NULL,
	        spAttackSt	INTEGER NOT NULL,
	        spDeffenseSt	INTEGER NOT NULL,
	        speedSt	INTEGER NOT NULL,
	        totalSt	INTEGER NOT NULL
            )
        """
    ]
    db = getDB()
    cursor = db.cursor()
    for table in tables:
        cursor.execute(table)