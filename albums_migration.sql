USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    record_name VARCHAR(150) NOT NULL,
    release_date INT(4) NOT NULL DEFAULT (YEAR(NOW())),
    sales FLOAT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DELIMITER $$
CREATE TRIGGER albums_between_year_trig BEFORE INSERT ON albums
FOR EACH ROW
BEGIN
    IF NEW.release_date < 1800 OR NEW.release_date > YEAR(NOW()) THEN
        SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Invalid release date, it should be between 1800 and the current year';
END IF;
END$$
DELIMITER ;