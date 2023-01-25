USE codeup_test_db;
SELECT record_name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Date Sgt. Pepper''s Lonely Hearts Club Band album was released' FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'Genre of album ''Thriller''' FROM albums WHERE record_name = 'Thriller';
SELECT record_name AS '90''s albums' FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT record_name AS 'Albums with less than 40 million sales' FROM albums WHERE sales < 40;
SELECT record_name AS 'Albums with genre as ''Rock''' FROM albums WHERE genre = 'Rock';
SELECT * FROM albums;