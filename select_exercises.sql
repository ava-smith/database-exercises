USE codeup_test_db;

SELECT * FROM albums
WHERE artist = 'Pink FLoyd';

SELECT * FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums
WHERE name = 'Nevermind';

SELECT * FROM albums
WHERE release_date BETWEEN 1990 and 1999;

SELECT * FROM albums
WHERE sales < 20;

SELECT * FROM albums
WHERE genre = 'Rock';