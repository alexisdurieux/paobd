SELECT raiseNotice('TEST INSERTION TABLES');

SELECT raiseNotice('INSERTION DANS UTILISATEUR:');
INSERT INTO UTILISATEUR VALUES ('alexis','helloworld', 'Durieux', 'Alexis', 22);
SELECT * FROM UTILISATEUR;

SELECT raiseNotice('INSERTION DANS ARTISTE:');
INSERT INTO ARTISTE VALUES ('Daft Punk', 'français');
SELECT * FROM ARTISTE;

SELECT raiseNotice('INSERTION DANS ALBUM:');
INSERT INTO ALBUM VALUES ('Random Access Memory', 'Daft Punk', 2013);
SELECT * FROM ALBUM;

SELECT raiseNotice('INSERTION DANS TITRE:');
INSERT INTO TITRE VALUES ('1', 'Get Lucky', 180, 'Daft Punk', 'Random Access Memory', 'electronique');
SELECT * FROM TITRE;

SELECT raiseNotice('INSERTION DANS LISTE_TITRE:');
INSERT INTO LISTE_TITRE VALUES ('alexis', '1');
SELECT * FROM LISTE_TITRE;

SELECT raiseNotice('INSERTION DANS LISTE_ALBUM:');
INSERT INTO LISTE_ALBUM VALUES ('alexis', 'Random Access Memory');
SELECT * FROM LISTE_ALBUM;

SELECT raiseNotice('INSERTION DANS LISTE_ARTISTE:');
INSERT INTO LISTE_ARTISTE VALUES ('alexis', 'Daft Punk');
SELECT * FROM LISTE_ARTISTE;

SELECT raiseNotice('INSERTION DANS ECOUTE:');
INSERT INTO ECOUTE VALUES ('alexis', DEFAULT,'1');
SELECT * FROM ECOUTE;

SELECT raiseNotice('INSERTION DANS PLAYLIST:');
INSERT INTO PLAYLIST VALUES ('1', 'Playlist éléctronique', 'alexis');
SELECT * FROM PLAYLIST;

SELECT raiseNotice('INSERTION PLAYLIST_TITRE:');
INSERT INTO PLAYLIST_TITRE VALUES ('1', '1');
SELECT * FROM PLAYLIST;

SELECT raiseNotice('Cleaning Tables...');

DELETE FROM PLAYLIST_TITRE WHERE titreId = '1';
DELETE FROM PLAYLIST WHERE id = '1';
DELETE FROM ECOUTE WHERE pseudoUser = 'alexis';
DELETE FROM LISTE_ARTISTE WHERE pseudoUser = 'alexis';
DELETE FROM LISTE_ALBUM WHERE pseudoUser = 'alexis';
DELETE FROM LISTE_TITRE WHERE pseudoUser = 'alexis';
DELETE FROM TITRE WHERE id = '1';
DELETE FROM ALBUM WHERE nom = 'Random Access Memory';
DELETE FROM ARTISTE WHERE nom = 'Daft Punk';
DELETE FROM UTILISATEUR WHERE pseudo = 'alexis'