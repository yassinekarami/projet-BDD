-- Script créant la vue des pokémons ayant des attaques les plus puissants et son dresseur
SET SERVEROUTPUT ON.
DROP VIEW BestPokemon;

SELECT nomDresseur, nomServeur, nomPokemon
FROM (
	SELECT nomAttaque, typeAttaque, MAX(nbDegats)
	FROM Attaques
	GROUP BY nomAttaque
) AS atk INNER JOIN Dresseurs AS drs ON atk.nomAttaque = drs.nomAttaque;
