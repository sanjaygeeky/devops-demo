create database devopsdb;
USE devopsdb;
drop user 'newuser'@'localhost';
CREATE TABLE dbversion (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,version VARCHAR(30) NOT NULL);
INSERT INTO dbversion (version) VALUES ('300.0');
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON devopsdb.* TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
