SHOW DATABASES;
USE belajar_mysql;

SHOW TABLES;

CREATE TABLE sellers
(
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  middlename VARCHAR(100),
  lastname VARCHAR(100),
  email VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email_unique (email),
  INDEX name_index (firstname, middlename, lastname)
) ENGINE = InnoDB;

DESCRIBE sellers;

SHOW CREATE TABLE sellers;