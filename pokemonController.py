from db import getDB
import json
import collections

def insertPokemon(name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroup, secondEggGroup, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio, sprite):
    db = getDB()
    cursor = db.cursor()
    statement = "INSERT INTO pokeDB(name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroup, secondEggGroup, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio, sprite) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
    cursor.execute(statement, [name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroup,
                   secondEggGroup, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio, sprite])
    db.commit()
    return True


def updatePokemon(id, name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroup, secondEggGroup, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio, sprite):
    db = getDB()
    cursor = db.cursor()
    statement = "UPDATE pokeDB SET name = ?, type = ?, secondType = ?, hpSt = ?, attackSt = ?, deffenseSt = ?, spAttackSt = ?, spDeffenseSt = ?, speedSt = ?, totalSt = ?, eggGroup = ?, secondEggGroup = ?, hatchTime = ?, ability = ?, secondAbility = ?, hiddenAbility = ?, evYield = ?, secondEvYield = ?, catchRate = ?, maleRatio = ?, femRatio = ?, sprite = ? WHERE id = ?"
    cursor.execute(statement, [name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroup,
                   secondEggGroup, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio, sprite, id])
    db.commit()
    return True


def deletePokemon(id):
    db = getDB()
    cursor = db.cursor()
    statement = "DELETE FROM Pokemon WHERE id = ?"
    cursor.execute(statement, [id])
    db.commit()
    return True


def getById(id):
    db = getDB()
    cursor = db.cursor()
    statement = "SELECT * FROM pokeDB WHERE id = ?"
    cursor.execute(statement, [id])
    return cursor.fetchone()


def getByName(name):
    db = getDB()
    cursor = db.cursor()
    statement = "SELECT * FROM pokeDB WHERE name = ?"
    cursor.execute(statement, [name])
    return cursor.fetchone()


def getByType(type):
    db = getDB()
    cursor = db.cursor()
    statement = "SELECT * FROM pokeDB WHERE type = ?"
    cursor.execute(statement, [type])
    return cursor.fetchall()


def getByAbility(ability):
    db = getDB()
    cursor = db.cursor()
    statement = f"SELECT * FROM pokeDB WHERE ability LIKE ? OR secondAbility LIKE ? OR hiddenAbility LIKE ?"
    cursor.execute(statement, [ability, ability, ability])
    return cursor.fetchall()


def getByGroup(group):
    db = getDB()
    cursor = db.cursor()
    statement = "SELECT * FROM pokeDB WHERE eggGroup LIKE ? OR secondEggGroup LIKE ?"
    cursor.execute(statement, [group, group])
    return cursor.fetchall()


def getPokemon():
    db = getDB()
    cursor = db.cursor()
    query = "SELECT * FROM pokeDB"
    cursor.execute(query)
    return cursor.fetchall()

def getRandom():
    db = getDB()
    cursor = db.cursor()
    query = "SELECT * FROM pokeDB ORDER BY RANDOM() LIMIT 1;"
    cursor.execute(query)
    return cursor.fetchall()


def getAllByName():
    db = getDB()
    cursor = db.cursor()
    query = "SELECT id, name, type, secondType, sprite FROM pokeDB"
    cursor.execute(query)

    objects_list = []
    rows = cursor.fetchall()
    for row in rows:
        d = collections.OrderedDict()
        d["id"] = row[0]
        d["name"] = row[1]
        d["type"] = row[2]
        d["secondType"] = row[3]
        d["sprite"] = row[4]
        objects_list.append(d)
    pokejson = json.dumps(objects_list)


    return pokejson
