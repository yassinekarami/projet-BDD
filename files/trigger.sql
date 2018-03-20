SET SERVEROUTPUT ON;
---------------------------Ttrigger -----------------------------------------

--on ne peut pas avoir une faiblesse et resistance similaire pour un meme type
--ex : pokemon eau peut pas etre resistant feu et faible feu

--on peut pas crée un champion si la table serveur est vide
--le champion du serveur X doit venir du serveur X
--le pokemon a obligatoirement un type
--nombre de joueur de doit pas depasser le nombre limite dans le serveur
--le pokemon du joueur doit existé





-- on peut pas depacer la limite de joueur dans le serveur

DROP TRIGGER insert_trigger;
/*
--trigger fonctionne
CREATE OR REPLACE TRIGGER insert_trigger
BEFORE INSERT ON Dresseurs
FOR EACH ROW

DECLARE
  no_place_exception EXCEPTION; 
  nb_ligne NUMBER;
  nbPlace NUMBER;


BEGIN

  SELECT  nbJoueur INTO nbPlace FROM Serveurs WHERE Serveurs.nomServeur = :new.nomServeur;
  SELECT COUNT(*) INTO nb_ligne FROM Dresseurs  WHERE Dresseurs.nomServeur = :new.nomServeur;

  IF nb_ligne < nbPlace THEN
      DBMS_OUTPUT.PUT_LINE('insertion reussi');

  ELSE
    RAISE no_place_exception;

  END IF;



  EXCEPTION 
    WHEN no_place_exception THEN
        RAISE_APPLICATION_ERROR(-20001 , 'plus de place dans le serveur');
      

END;
/
 */

--INSERT INTO Dresseurs VALUES (25,'Yassine','Hoenn','Abra','Frappe');
--SHOW ERRORS TRIGGER insert_trigger;

DELETE FROM Dresseurs WHERE idDresseur = 25;

--mise a jour du champion du serveur 
CREATE OR REPLACE TRIGGER majServeur
BEFORE INSERT OR UPDATE ON Dresseurs
FOR EACH ROW

DECLARE
  error_exception EXCEPTION;
  degat_challenger NUMBER;
  degat_champion NUMBER;
  my_champion VARCHAR2(20);


BEGIN
  
   SELECT nbDegats INTO degat_challenger FROM Dresseurs NATURAL JOIN Attaques WHERE nomDresseur = :new.nomDresseur AND nomServeur = :new.nomServeur;

   SELECT champion INTO my_champion FROM Serveurs WHERE nomServeur = :new.nomServeur;

   SELECT nbDegats INTO degat_champion FROM Dresseurs NATURAL JOIN Attaques WHERE nomServeur = :new.nomServeur AND nomDresseur = my_champion;


    DBMS_OUTPUT.PUT_LINE('challenger ' || degat_challenger);
     DBMS_OUTPUT.PUT_LINE('champion ' || degat_champion);
   IF degat_challenger > degat_champion THEN

    UPDATE Serveurs SET champion = :new.nomDresseur WHERE nomServeur = :new.nomServeur;
    DBMS_OUTPUT.PUT_LINE('mise a jour du champion');
    DBMS_OUTPUT.PUT_LINE('nom serveur ' || :new.nomServeur);
    DBMS_OUTPUT.PUT_LINE('le champion ' || :new.nomDresseur);

  ELSE 
     DBMS_OUTPUT.PUT_LINE('insertion reussi ');
   END IF;


  EXCEPTION 
    WHEN error_exception THEN
      RAISE_APPLICATION_ERROR(-20002 , 'erreur');

END;
/

INSERT INTO Dresseurs VALUES (20,'Yassine','Hoenn','Abra','Lance-Flamme');
SHOW ERRORS TRIGGER majServeur ;





















