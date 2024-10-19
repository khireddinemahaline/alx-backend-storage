-- create a user table


DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(255) UNIQUE NOT NULL,
name varchar(255),
country ENUM('US','CO','TN' NOT NULL DEFAULT='US')
);
