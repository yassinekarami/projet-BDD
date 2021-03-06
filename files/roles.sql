-- Script créant les différentes rôles des utilisateurs utilisant la base de données

DROP ROLE Admin;
DROP ROLE ServerAdmin;
DROP ROLE Joueur;

CREATE ROLE Admin;
CREATE ROLE ServerAdmin;
CREATE ROLE Joueur;

GRANT SELECT ON Serveurs TO Joueur;
GRANT SELECT ON Attaques TO Joueur;
GRANT SELECT ON Pokemons TO Joueur;

GRANT INSERT, UPDATE, SELECT, DELETE ON Desseurs TO Admin, ServerAdmin;
GRANT INSERT, UPDATE, SELECT, DELETE ON Serveurs TO Admin, ServerAdmin;

GRANT INSERT, UPDATE, SELECT, DELETE ON Attaques TO Admin;
GRANT INSERT, UPDATE, SELECT, DELETE ON Pokemons TO Admin;
GRANT INSERT, UPDATE, SELECT, DELETE ON Faiblesses TO Admin;
GRANT INSERT, UPDATE, SELECT, DELETE ON Resistances TO Admin;

GRANT Admin TO L3_112;
GRANT ServerAdmin TO L3_110;
GRANT Joueur TO L3_107;
