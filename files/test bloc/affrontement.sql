SET SERVEROUTPUT ON;

CREATE OR REPLACE VIEW bigTable AS
SELECT nbDegats , nomServeur , nomDresseur
FROM Dresseurs  NATURAL JOIN Attaques;

CREATE OR REPLACE PROCEDURE affrontement
IS

serveur VARCHAR2(20);	

nomDresseur1 VARCHAR2(50);
pokemon1 VARCHAR(20);
degat1 NUMBER;
poke1Type1 VARCHAR2(20);
poke1Type2 VARCHAR2(20);
poke1NomA VARCHAR2(20);
poke1TypeA VARCHAR2(50);



nomDresseur2 VARCHAR2(50);
pokemon2 VARCHAR2(20);
degat2 NUMBER;
poke2Type1 VARCHAR2(20);
poke2Type2 VARCHAR2(20);
poke2NomA VARCHAR2(20);
poke2TypeA VARCHAR2(50);

my_exception EXCEPTION;


nbLigne NUMBER;

BEGIN


	serveur := '&1';

	nomDresseur1 := '&2';
	nomDresseur2 := '&3';

	SELECT nomPokemon , nomAttaque  INTO  pokemon1 , poke1NomA FROM Dresseurs WHERE nomServeur = serveur AND nomDresseur = nomDresseur1;

	IF nomDresseur1 IS NULL THEN
		RAISE my_exception;
	END IF; 

	SELECT type1 , type2 INTO poke1Type1 , poke1Type2 FROM Pokemons WHERE nomPokemon = pokemon1;
	SELECT nbDegats , typeAttaque INTO degat1 , poke1TypeA FROM Attaques WHERE nomAttaque = poke1NomA;
	
	SELECT nomPokemon , nomAttaque INTO pokemon2 , poke2NomA FROM Dresseurs WHERE nomServeur = serveur AND nomDresseur = nomDresseur2;
		
	IF nomDresseur2 IS NULL THEN
			RAISE my_exception;

	END IF;

	SELECT type1 , type2 INTO poke2Type1 , poke2Type2 FROM Pokemons WHERE nomPokemon = pokemon2;
	SELECT nbDegats, typeAttaque INTO degat2 , poke2TypeA FROM Attaques WHERE nomAttaque = poke2NomA;


	--faiblesse pokemon2
	SELECT COUNT(*) INTO nbLigne FROM Faiblesses WHERE (type = poke2Type1 OR type = poke2Type2 ) AND faiblesse = poke1TypeA;
	IF nbLigne > 0 THEN
		 degat1 := degat1 * 2 * nbLigne ;
	END IF;

	--resistance pokemon2
	SELECT COUNT(*) INTO nbLigne FROM Resistances WHERE (type = poke2Type1 OR type = poke2Type2 ) AND resistance = poke1TypeA;
	IF nbLigne > 0 THEN
		 degat1 := degat1 / (2 * nbLigne );
	END IF;


	--faiblesse pokemon1
	SELECT COUNT(*) INTO nbLigne FROM Faiblesses WHERE (type = poke1Type1 OR type = poke1Type2 ) AND faiblesse = poke2TypeA;
	IF nbLigne > 0 THEN
		 degat2 := degat1 * 2 * nbLigne ;
	END IF;

	--resistance pokemon1
	SELECT COUNT(*) INTO nbLigne FROM Resistances WHERE (type = poke1Type1 OR type = poke1Type2 ) AND resistance = poke2TypeA;
	IF nbLigne > 0 THEN
		 degat2 := degat2 / (2 * nbLigne );
	END IF;

	
	DBMS_OUTPUT.PUT_LINE('degat1 ' || degat1);
	DBMS_OUTPUT.PUT_LINE('degat2 ' || degat2);

	IF degat1 > degat2 THEN
		DBMS_OUTPUT.PUT_LINE('vaiqueueur ' || nomDresseur1  ||'   ' ||pokemon1);
	ELSE
		DBMS_OUTPUT.PUT_LINE('vaiqueueur ' ||nomDresseur2 || '   ' || pokemon2);
	END IF;

	
	EXCEPTION 	
		WHEN my_exception THEN 
			 RAISE_APPLICATION_ERROR(-20003 , 'erreur');

END;
/ 
execute affrontement;
show errors;

