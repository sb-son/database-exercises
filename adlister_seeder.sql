USE adlister_test;

INSERT INTO categories (category_name)
VALUES
    ('Electronics'),
    ('Furniture'),
    ('Clothing'),
    ('Food'),
    ('Games');

INSERT INTO users (email_address, password)
VALUES
    ('user1@gmail.com', 'password1'),
    ('user2@gmail.com', 'password2'),
    ('user3@gmail.com', 'password3'),
    ('user4@gmail.com', 'password4'),
    ('user5@gmail.com', 'password5');
INSERT INTO ads (title, description, user_id)
VALUES
    ('iPhone XS', 'Slightly used iPhone XS for sale', 1),
    ('Leather Sofa', 'Brand new leather sofa for sale', 2),
    ('Blue Jeans', 'Never worn blue jeans for sale', 3),
    ('Organic Apples', 'Fresh organic apples for sale', 4),
    ('XBox Series X', 'Brand new XBox Series X for sale', 5);

INSERT INTO ad_category (ad_id, category_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);