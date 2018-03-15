SET server output ON;
---------------------------Ttrigger -----------------------------------------

--on ne peut pas avoir une faiblesse et resistance similaire pour un meme type
ex : pokemon eau peut pas etre resistant feu et faible feu
--on peut pas crée un serveur avec un nombre nagtif de joueur
--on peut pas crée une attaque avec un nbDegats negatif 
--on peut pas crée un champion si la table serveur est vide
--le champion du serveur X doit venir du serveur X
--le pokemon a obligatoirement un type
--nombre de joueur de doit pas depasser le nombre limite dans le serveur
--le pokemon du joueur doit existé





--on peut pas crée un serveur avec un nombre nagtif de joueur
CREATE OR REPLACE TRIGGER serveur_negatif
BEFORE INSERT OR UPDATE ON Serveurs
FOR EACH ROW

DECLARE
	exception_nbjoueur EXCEPTION
BEGIN

	IF (:new.nbJoueur <=0) THEN
		RAISE exception_nbjoueur 
	ELSE
		INSERT INTO Serveurs (nomServeur , nbJoueur) VALUES (:new.nomServeur , :new.nbJoueur);
							 
	END IF;
	
	WHEN exception_nbjoueur THEN
		DBMS.OUTPUT.PUTLINE('nombre doit etre supperieur a 0 ');
			
END;

--on peut pas crée une attaque avec un nbDegats negatif 
CREATE OR REPLACE TRIGGER attaque_negatif
BEFORE INSERT OR UPDATE ON Attaques
FOR EACH ROW

DECLARE
	exception_degat_attaque EXCEPTION

BEGIN
	
	IF(:new.nbDegats <=0) THEN
		RAISE exception_degat_attaque
	ELSE
	
		INSERT INTO Attaques (nomAttaque , typeAttaque , nbDegats) VALUES 								(:new.nomAttaque, :new.typeAttaque, :new.nbDegats);

	ELSE IF;

	
	WHEN exception_degat_attaque THEN
		DBMS.OUTPUT.PUTLINE('nombre doit etre supperieur a 0 ');
	
END;

--on peut pas crée un champion si la table serveur est vide
CREATE OR REPLACE TRIGGER chamion_check
BEFORE INSERT OR UPDATE ON Serveurs
FOR EACH ROW

DECLARE	
	exception_champion EXCEPTION

BEGIN


	WHEN exception_champion THEN
		DBMS.OUTPUT.PUTLINE('erreur');
END;























