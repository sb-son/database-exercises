CREATE DATABASE adlister_test;
USE adlister_test;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
                     `id` int NOT NULL AUTO_INCREMENT,
                     `email_address` varchar(45) NOT NULL,
                     `password` varchar(45) NOT NULL,
                     PRIMARY KEY (`id`),
                     UNIQUE KEY `email_address_UNIQUE` (`email_address`)
);

DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
                   `id` int NOT NULL AUTO_INCREMENT,
                   `title` varchar(45) NOT NULL,
                   `description` varchar(500) NOT NULL,
                   `user_id` int NOT NULL,
                   PRIMARY KEY (`id`),
                   KEY `user_id_idx` (`user_id`),
                   CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `category_name` varchar(45) NOT NULL,
                          PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS ad_category;
CREATE TABLE `ad_category` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `ad_id` int NOT NULL,
                           `category_id` int NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `ad_id_idx` (`ad_id`),
                           KEY `category_id_idx` (`category_id`),
                           CONSTRAINT `ad_id` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`),
                           CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
)
