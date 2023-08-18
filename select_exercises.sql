USE codeup_test_db;

SELECT name FROM albums
WHERE artist = 'Pink FLoyd';

SELECT genre FROM albums
WHERE name = 'Nevermind';

SELECT name FROM albums
WHERE release_date >= 1990 || albums.release_date <= 1999;

SELECT name, sales FROM albums
WHERE sales < 20;

SELECT name FROM albums
WHERE genre = 'Rock';

SELECT release_date, name FROM albums
WHERE artist = 'Sgt. Pepper''s Lonely Hearts Club Band';

