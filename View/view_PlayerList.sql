-- Script créant la vue des joueurs
SET SERVEROUTPUT ON.
DROP VIEW PlayerList;

CREATE VIEW Player2Player AS
SELECT nomDresseur, nomPokemon, nomAttaque
FROM Dresseurs;

