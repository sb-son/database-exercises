USE codeup_test_db;
SELECT record_name AS 'Deleting the albums released after 1991' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT record_name AS 'Deleting albums with genre equal to disco' FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT record_name AS 'Deleting albums where artist name is Eagles' FROM albums WHERE artist = 'Eagles';
DELETE FROM albums WHERE artist = 'Eagles';