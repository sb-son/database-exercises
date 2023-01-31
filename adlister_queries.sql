USE adlister_test;

# For a given ad, what is the email address of the user that created it?
SELECT title, email_address
FROM users u
JOIN ads a
    ON u.id = a.user_id;

# For a given ad, what category, or categories, does it belong to?
SELECT title, category_name
FROM categories c
JOIN ad_category ac
    ON c.id = ac.category_id
JOIN ads a
    ON a.id = ac.ad_id;

# For a given category, show all the ads that are in that category.
SELECT COUNT(*)
FROM ad_category
JOIN categories c
    ON c.id = ad_category.category_id
WHERE category_name = 'Food';

# For a given user, show all the ads they have posted.
SELECT email_address, title
FROM ads
JOIN users u
    ON u.id = ads.user_id
WHERE user_id = 2;
