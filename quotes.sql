USE codeup_test_db;
DROP TABLE IF EXISTS quotes;
CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        author_first_name VARCHAR(50),
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL
);
INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams',    'Time is an illusion. Lunchtime doubly so.'),
       ('Douglas', 'Adams', 'Don''t Panic.'),
       ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');