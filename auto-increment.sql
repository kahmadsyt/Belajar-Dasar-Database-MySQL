SHOW DATABASES;
USE belajar_mysql;

CREATE TABLE admin
(
  id 		INT 		 NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname 	VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE admin;

INSERT INTO admin(firstname, lastname)
VALUES ('Achmad', 'Kamil'),
	   ('Brian', 'Murphy'),
       ('Chole', 'Stewart');

SELECT *
FROM admin
ORDER by id;

DELETE
FROM admin
WHERE id IN (4, 5, 6);

INSERT INTO admin(firstname, lastname)
VALUES ('Charlie', 'Joe'),
	   ('David', 'Murder'),
       ('Evans', 'Antonio');

SELECT LAST_INSERT_ID();

INSERT INTO admin(firstname, lastname)
VALUES ('Frederick', 'Kanoute');