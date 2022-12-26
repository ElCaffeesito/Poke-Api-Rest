from db import getDB

def insertPokemon(name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility):
    db = getDB()
    cursor = db.cursor()
    statement = "INSERT INTO pokeDB(name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
    cursor.execute(statement,[name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility])
    db.commit()
    return True

def updatePokemon(id, name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility):
    db = getDB()
    cursor = db.cursor()
    statement = "UPDATE pokeDB SET name = ?, type = ?, secondType = ?, hpSt = ?, attackSt = ?, deffenseSt = ?, spAttackSt = ?, spDeffenseSt = ?, speedSt = ?, totalSt = ?, eggGroups = ?, ability = ?, secondAbility = ?, hiddenAbility = ? WHERE id = ?"
    cursor.execute(statement,[name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility, id])
    db.commit()
    return True 

def deletePokemon(id):
    db = getDB()
    cursor = db.cursor()
    statement = "DELETE FROM Pokemon WHERE id = ?"
    cursor.execute(statement,[id])
    db.commit()
    return True 

def getByid(id):
    db = getDB()
    cursor = db.cursor()
    statement = "SELECT id, name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility FROM pokeDB WHERE id = ?"
    cursor.execute(statement,[id])
    return  cursor.fetchone()

def getPokemon():
    db = getDB()
    cursor = db.cursor()
    query = "SELECT id, name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, ability, secondAbility, hiddenAbility FROM pokeDB"
    cursor.execute(query)
    return  cursor.fetchall()