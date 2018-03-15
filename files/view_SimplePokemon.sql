-- Script créant la vue simplifié des pokémons
SET SERVEROUTPUT ON.
DROP VIEW SimplePokemon;

SELECT nomPokemon, type1, type2, generation
FROM Pokemons;
