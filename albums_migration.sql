USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    record_name VARCHAR(150) NOT NULL,
    release_date INT(4) CHECK (release_date BETWEEN 1800 and 9999) NOT NULL,
    sales FLOAT(10,2) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);