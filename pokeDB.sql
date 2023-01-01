BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pokeDB" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"type"	TEXT NOT NULL DEFAULT (0),
	"secondType"	TEXT,
	"hpSt"	INTEGER NOT NULL DEFAULT (0),
	"attackSt"	INTEGER NOT NULL DEFAULT (0),
	"deffenseSt"	INTEGER NOT NULL DEFAULT (0),
	"spAttackSt"	INTEGER NOT NULL DEFAULT (0),
	"spDeffenseSt"	INTEGER NOT NULL DEFAULT (0),
	"speedSt"	INTEGER NOT NULL DEFAULT (0),
	"totalSt"	INTEGER NOT NULL DEFAULT (0),
	"eggGroups"	TEXT NOT NULL DEFAULT (0),
	"hatchTime"	INTEGER,
	"ability"	TEXT NOT NULL DEFAULT (0),
	"secondAbility"	TEXT,
	"hiddenAbility"	TEXT,
	"evYield"	TEXT NOT NULL DEFAULT (0),
	"secondEvYield"	TEXT,
	"catchRate"	INTEGER NOT NULL DEFAULT (0),
	"maleRatio"	INTEGER,
	"femRatio"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "pokeDB" VALUES (1,'Bulbasaur','grass','poison',45,49,49,65,65,45,318,'Monster - Grass',20,'Overgrow','-','Chlorophyll','SATK +1',NULL,45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (2,'Ivysaur','grass - posion','poison',60,62,63,80,80,60,405,'Monster - Grass',20,'Overgrow','-','Chlorophyll','SATK +1','SDEF +1',45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (3,'Venusaur','grass - posion','poison',80,82,83,100,100,80,525,'Monster - Grass',20,'Overgrow','-','Chlorophyll','SATK +2','SDEF +1',45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (4,'Charmander','fire','-',39,52,43,60,50,65,309,'Monster - Dragon',20,'blaze','-','Solar Power','SPE +1',NULL,45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (5,'Charmeleon','fire','-',58,64,58,80,65,80,405,'Monster - Dragon',20,'blaze','-','Solar Power','SATK +1','SPE +1',45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (6,'Charizard','fire','flying',78,84,78,109,85,100,534,'Monster - Dragon',20,'blaze','-','Solar Power','SATK +3',NULL,45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (7,'Squirtle','water','-',44,48,65,50,64,43,314,'Monster - Water1',20,'torrent','-','rain dish','DEF +1',NULL,45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (8,'Wartortle','water','-',59,63,80,65,80,58,405,'Monster - Water1',20,'torrent','-','rain dish','DEF +1','SDEF +1',45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (9,'Blastoise','water','-',79,83,100,85,105,78,530,'Monster - Water1',20,'torrent','-','rain dish','SDEF +3',NULL,45,87.5,12.5);
INSERT INTO "pokeDB" VALUES (10,'Caterpie','bug','-',45,30,35,20,20,45,195,'Bug',15,'shield dust','-','run away','HP +1',NULL,255,50,50);
INSERT INTO "pokeDB" VALUES (11,'Metapod','bug','-',50,20,55,25,25,30,205,'Bug',15,'shed skin','-','-','DEF +2',NULL,120,50,50);
INSERT INTO "pokeDB" VALUES (12,'Butterfree','bug','flying',60,45,50,90,80,70,395,'Bug',15,'compound eyes','-','tinted lens','SATK +2','SDEF +1',45,50,50);
INSERT INTO "pokeDB" VALUES (13,'Weedle','bug','poison',40,35,30,20,20,50,195,'Bug',15,'shield dust','-','run away','SPE +1',NULL,255,50,50);
INSERT INTO "pokeDB" VALUES (14,'Kakuna','bug','poison',45,25,50,25,25,35,205,'Bug',15,'shed skin','-','-','DEF +2',NULL,120,50,50);
INSERT INTO "pokeDB" VALUES (15,'Beedrill','bug','poison',65,90,40,45,80,75,395,'Bug',15,'swarm','-','sniper','ATK +2','SDEF +1',45,50,50);
INSERT INTO "pokeDB" VALUES (16,'Pidgey','normal','flying',40,45,40,35,35,56,251,'Flying',15,'tangled feet','keen eye','big pecks','SPE +1',NULL,255,50,50);
INSERT INTO "pokeDB" VALUES (17,'Pidgeotto','normal','flying',63,60,55,50,50,71,349,'Flying',15,'tangled feet','keen eye','big pecks','SPE +2',NULL,120,50,50);
INSERT INTO "pokeDB" VALUES (18,'Pidgeot','normal','flying',83,80,75,70,70,101,479,'Flying',15,'tangled feet','keen eye','big pecks','SPE +3',NULL,45,50,50);
COMMIT;
