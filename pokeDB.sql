BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Johto" (
	"id"	INTEGER NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"type"	TEXT NOT NULL,
	"secondType"	TEXT,
	"hpSt"	INTEGER NOT NULL,
	"attackSt"	INTEGER NOT NULL,
	"deffenseSt"	INTEGER NOT NULL,
	"spAttackSt"	INTEGER NOT NULL,
	"spDeffenseSt"	INTEGER NOT NULL,
	"speedSt"	INTEGER NOT NULL,
	"totalSt"	INTEGER NOT NULL,
	"eggGroup"	TEXT NOT NULL,
	"secondEggGroup"	INTEGER,
	"hatchTime"	INTEGER NOT NULL,
	"ability"	TEXT NOT NULL,
	"secondAbility"	TEXT,
	"hiddenAbility"	TEXT,
	"evYield"	TEXT NOT NULL,
	"secondEvYield"	TEXT,
	"catchRate"	INTEGER,
	"maleRatio"	INTEGER,
	"femRatio"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Kanto" (
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
	"eggGroup"	TEXT NOT NULL DEFAULT (0),
	"secondEggGroup"	TEXT,
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
INSERT INTO "Kanto" VALUES (1,'Bulbasaur','Grass','Poison',45,49,49,65,65,45,318,'Monster','Grass',20,'Overgrow','-','Chlorophyll','SATK +1',NULL,45,87.5,12.5);
INSERT INTO "Kanto" VALUES (2,'Ivysaur','Grass','Poison',60,62,63,80,80,60,405,'Monster','Grass',20,'Overgrow','-','Chlorophyll','SATK +1','SDEF +1',45,87.5,12.5);
INSERT INTO "Kanto" VALUES (3,'Venusaur','Grass','Poison',80,82,83,100,100,80,525,'Monster','Grass',20,'Overgrow','-','Chlorophyll','SATK +2','SDEF +1',45,87.5,12.5);
INSERT INTO "Kanto" VALUES (4,'Charmander','Fire',NULL,39,52,43,60,50,65,309,'Monster','Dragon',20,'Blaze','-','Solar Power','SPE +1',NULL,45,87.5,12.5);
INSERT INTO "Kanto" VALUES (5,'Charmeleon','Fire',NULL,58,64,58,80,65,80,405,'Monster','Dragon',20,'Blaze','-','Solar Power','SATK +1','SPE +1',45,87.5,12.5);
INSERT INTO "Kanto" VALUES (6,'Charizard','Fire','Flying',78,84,78,109,85,100,534,'Monster','Dragon',20,'Blaze','-','Solar Power','SATK +3',NULL,45,87.5,12.5);
INSERT INTO "Kanto" VALUES (7,'Squirtle','Water',NULL,44,48,65,50,64,43,314,'Monster','Water1',20,'Torrent','-','Rain dish','DEF +1',NULL,45,87.5,12.5);
INSERT INTO "Kanto" VALUES (8,'Wartortle','Water',NULL,59,63,80,65,80,58,405,'Monster','Water1',20,'Torrent','-','Rain dish','DEF +1','SDEF +1',45,87.5,12.5);
INSERT INTO "Kanto" VALUES (9,'Blastoise','Water',NULL,79,83,100,85,105,78,530,'Monster','Water1',20,'Torrent','-','Rain dish','SDEF +3',NULL,45,87.5,12.5);
INSERT INTO "Kanto" VALUES (10,'Caterpie','Bug',NULL,45,30,35,20,20,45,195,'Bug',NULL,15,'Shield dust','-','Run away','HP +1',NULL,255,50,50);
INSERT INTO "Kanto" VALUES (11,'Metapod','Bug',NULL,50,20,55,25,25,30,205,'Bug',NULL,15,'Shed skin','-','-','DEF +2',NULL,120,50,50);
INSERT INTO "Kanto" VALUES (12,'Butterfree','Bug','Flying',60,45,50,90,80,70,395,'Bug',NULL,15,'Compound eyes','-','Tinted lens','SATK +2','SDEF +1',45,50,50);
INSERT INTO "Kanto" VALUES (13,'Weedle','Bug','Poison',40,35,30,20,20,50,195,'Bug',NULL,15,'Shield dust','-','Run away','SPE +1',NULL,255,50,50);
INSERT INTO "Kanto" VALUES (14,'Kakuna','Bug','Poison',45,25,50,25,25,35,205,'Bug',NULL,15,'Shed skin','-','-','DEF +2',NULL,120,50,50);
INSERT INTO "Kanto" VALUES (15,'Beedrill','Bug','Poison',65,90,40,45,80,75,395,'Bug',NULL,15,'Swarm','-','Sniper','ATK +2','SDEF +1',45,50,50);
INSERT INTO "Kanto" VALUES (16,'Pidgey','Normal','Flying',40,45,40,35,35,56,251,'Flying',NULL,15,'Tangled feet','Keen eye','Big pecks','SPE +1',NULL,255,50,50);
INSERT INTO "Kanto" VALUES (17,'Pidgeotto','Normal','Flying',63,60,55,50,50,71,349,'Flying',NULL,15,'Tangled feet','Keen eye','Big pecks','SPE +2',NULL,120,50,50);
INSERT INTO "Kanto" VALUES (18,'Pidgeot','Normal','Flying',83,80,75,70,70,101,479,'Flying',NULL,15,'Tangled feet','Keen eye','Big pecks','SPE +3',NULL,45,50,50);
INSERT INTO "Kanto" VALUES (19,'Rattata','Normal',NULL,30,56,35,25,35,72,253,'Field',NULL,15,'Guts','Run Away','Hustle','SPE +1',NULL,255,50,50);
INSERT INTO "Kanto" VALUES (20,'Raticate','Normal',NULL,55,81,60,50,70,97,413,'Field',NULL,15,'Guts','Run Away','Hustle','SPE +2',NULL,127,50,50);
INSERT INTO "Kanto" VALUES (21,'Spearow','Normal','Flying',40,60,30,31,31,70,262,'Flying','',15,'Keen eye','','Sniper','SPE +1','',255,50,50);
INSERT INTO "Kanto" VALUES (22,'Fearow','Normal','Flying',65,90,65,61,61,100,442,'Flying','',15,'Keen eye','','Sniper','SPE +2','',90,50,50);
INSERT INTO "Kanto" VALUES (23,'Ekans','Poison','',35,60,44,40,54,55,288,'Field','Dragon',20,'Intimidate','Shed skin','Unnerve','ATK +1','',255,50,50);
INSERT INTO "Kanto" VALUES (24,'Arbok','Poison','',60,95,69,65,79,80,448,'Field','Dragon',20,'Intimidate','Shed skin','Unnerve','ATK +2','',90,50,50);
COMMIT;
