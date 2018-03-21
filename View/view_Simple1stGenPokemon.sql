-- Script créant la vue simplifié des pokémons de 1ere générations
SET SERVEROUTPUT ON.
DROP VIEW Simple1stGenPokemon;

SELECT *
FROM SimplePokemon
WHERE generation = 1;
