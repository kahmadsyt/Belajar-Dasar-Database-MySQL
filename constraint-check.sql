SHOW DATABASES;
USE belajar_mysql;
SHOW TABLES;

CREATE TABLE customers
(
  id		INT				NOT NULL AUTO_INCREMENT,
  email		VARCHAR(100)	NOT NULL,
  firstname	VARCHAR(100)	NOT NULL,
  lastname	VARCHAR(100),
  PRIMARY KEY(id),
  UNIQUE KEY email_unique (email)
);

SHOW TABLES;
DESCRIBE customers;

ALTER TABLE customers
DROP CONSTRAINT email_unique;

ALTER TABLE customers
ADD CONSTRAINT email_unique UNIQUE (email);

INSERT INTO customers (email, firstname, lastname)
VALUES ('achmadkamil17@gmail.com', 'Achmad', 'Kamil');

INSERT INTO customers (email, firstname, lastname)
VALUES ('ahmad.belanjaonline.khusus@gmail.com', 'Ahmad', 'Karim');

SELECT *
FROM customers;