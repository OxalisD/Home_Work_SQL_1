SELECT name, year FROM albums
WHERE "year"  = 2018;

SELECT name, duration FROM tracks
ORDER BY duration DESC 
LIMIT 1;

SELECT name, duration FROM tracks
WHERE duration > '00:03:30';

SELECT name FROM collections
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM artists
WHERE name NOT LIKE '% %';

SELECT name FROM tracks
WHERE name LIKE '%My %' OR name LIKE '%my %';
