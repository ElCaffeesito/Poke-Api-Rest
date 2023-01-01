from flask import Flask, jsonify, request
import pokemonController
from db import createTables

app = Flask(__name__)

@app.route('/pokemons', methods = ["GET"])
def getPokemon():
    pokemon = pokemonController.getPokemon()
    return jsonify(pokemon)

@app.route('/pokemon', methods=["POST"])
def insertPokemon():
    pokemonDetails = request.get_json()
    name = pokemonDetails["name"]
    type = pokemonDetails["type"]
    secondType = pokemonDetails["secondType"]
    hpSt = pokemonDetails["hpSt"]
    attackSt = pokemonDetails["attackSt"]
    deffenseSt = pokemonDetails["deffenseSt"]
    spAttackSt = pokemonDetails["spAttackSt"]
    spDeffenseSt = pokemonDetails["spDeffenseSt"]
    speedSt = pokemonDetails["speedSt"]
    totalSt = pokemonDetails["totalSt"]
    eggGroups = pokemonDetails["eggGroups"]
    hatchTime = pokemonDetails["hatchTime"]
    ability = pokemonDetails["ability"]
    secondAbility = pokemonDetails["secondAbility"]
    hiddenAbility = pokemonDetails["hiddenAbility"]
    evYield = pokemonDetails["evYield"]
    secondEvYield = pokemonDetails["secondEvYield"]
    catchRate = pokemonDetails["catchRate"]
    maleRatio = pokemonDetails["maleRatio"]
    femRatio = pokemonDetails["femRatio"]
    result = pokemonController.insertPokemon(name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio)
    return jsonify(result)

@app.route('/pokemon', methods=["PUT"])
def updatePokemon():
    pokemonDetails = request.get_json()
    id = pokemonDetails["Id"]
    pokemonDetails = request.get_json()
    name = pokemonDetails["name"]
    type = pokemonDetails["type"]
    secondType = pokemonDetails["secondType"]
    hpSt = pokemonDetails["hpSt"]
    attackSt = pokemonDetails["attackSt"]
    deffenseSt = pokemonDetails["deffenseSt"]
    spAttackSt = pokemonDetails["spAttackSt"]
    spDeffenseSt = pokemonDetails["spDeffenseSt"]
    speedSt = pokemonDetails["speedSt"]
    totalSt = pokemonDetails["totalSt"]
    eggGroups = pokemonDetails["eggGroups"]
    hatchTime = pokemonDetails["hatchimes"]
    ability = pokemonDetails["ability"]
    secondAbility = pokemonDetails["secondAbility"]
    hiddenAbility = pokemonDetails["hiddenAbility"]
    evYield = pokemonDetails["evYield"]
    secondEvYield = pokemonDetails["secondEvYield"]
    catchRate = pokemonDetails["catchRate"]
    maleRatio = pokemonDetails["maleRatio"]
    femRatio = pokemonDetails["femRatio"]
    result = pokemonController.insertPokemon(id, name, type, secondType, hpSt, attackSt, deffenseSt, spAttackSt, spDeffenseSt, speedSt, totalSt, eggGroups, hatchTime, ability, secondAbility, hiddenAbility, evYield, secondEvYield, catchRate, maleRatio, femRatio)
    return jsonify(result)

@app.route('/pokemon/<Id>', methods=["DELETE"])
def deletePokemon(Id):
    result = pokemonController.deletePokemon(Id)
    return jsonify(result)

@app.route('/pokemon/<Id>', methods=["GET"])
def getPokemonById(Id):
    pokemon = pokemonController.getById(Id)
    return jsonify(pokemon)

"""
Enable CORS. Disable it if you don't need CORS
"""

@app.after_request
def after_request(response):
    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Allow-Credentials"] = "true"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS, PUT, DELETE"
    response.headers["Access-Control-Allow-Headers"] = "Acept, Content-Typt, Content-Length, Accept-Encoding, X-CSRF-Token"
    return response

if __name__ == "__main__":
    createTables()
    """
    Here you can change debug and port
    Remember that, in order to make this API functional, you must set debug in False
    """

    app.run(host='0.0.0.0', port=8000, debug=False)
