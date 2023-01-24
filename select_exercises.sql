USE codeup_test_db;
SELECT record_name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE record_name = 'Thriller';
SELECT record_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT record_name FROM albums WHERE sales < 40;
SELECT record_name FROM albums WHERE genre = 'Rock'\G
SELECT * FROM albums;