SHOW DATABASES;
USE belajar_mysql;

SHOW TABLES;
DESC products;

CREATE TABLE wishlist
(
  id INT NOT NULL AUTO_INCREMENT,
  id_product VARCHAR(10) NOT NULL,
  description TEXT,
  PRIMARY KEY(id),
  CONSTRAINT fk_wishlist_product
  	FOREIGN KEY(id_product) REFERENCES products(id)
) ENGINE = InnoDB;

DESC wishlist;

SHOW CREATE TABLE wishlist;

INSERT INTO wishlist(id_product, description)
VALUES('P0001', 'Makanan Favorit');

INSERT INTO wishlist(id_product, description)
VALUES('P0100', 'Makanan Favorit');

SELECT *
FROM products;

ALTER TABLE wishlist
DROP CONSTRAINT fk_wishlist_product;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_product
FOREIGN KEY(id_product) REFERENCES products(id)
ON DELETE CASCADE ON UPDATE NO ACTION;

INSERT INTO products(id, name, category, description, price, quantity)
VALUES('P0018', 'LAPTOP BACK TO SCHOOL', 'NOTEBOOK', 'LAPTOP UNTUK SEKOLAH', 8000000, 70);

INSERT INTO wishlist(id_product, description)
VALUES('P0018', 'LAPTOP UNTUK SEKOLAH');

INSERT INTO wishlist(id_product, description)
VALUES('P0', 'CONTOH');

SELECT *
FROM wishlist;

DELETE
FROM products
WHERE id = 'P0018';