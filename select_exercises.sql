USE codeup_test_db;
SELECT 'The name of all albums by Pink Floyd.';

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'Which albums were released in the 1990s';
SELECT album_name FROM albums WHERE release_date BETWEEN '1990' AND '2000';

SELECT 'Which albums had less than 20 million certified sales';
SELECT album_name FROM albums WHERE sales < '20';

SELECT 'All the albums with a genre of "Rock"';
SELECT * FROM albums WHERE genre = 'Rock';