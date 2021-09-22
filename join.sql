SHOW DATABASES;
USE belajar_mysql;

SHOW TABLES;
DESC wishlist;

SELECT *
FROM wishlist;

SELECT *
FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

SELECT wishlist.id, products.id, products.name, wishlist.description
FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

SELECT wl.id, pr.id, pr.name, wl.description
FROM wishlist AS wl
JOIN products AS pr ON (wl.id_product = pr.id);

SELECT	wl.id AS wishlist_id,
		pr.id AS products_id,
        pr.name AS products_name,
        wl.description AS wishlist_description
FROM wishlist AS wl
JOIN products AS pr ON (wl.id_product = pr.id);

DESC customers;

ALTER TABLE wishlist
ADD COLUMN id_customer INT;

DESC wishlist;

SELECT *
FROM customers;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customer
FOREIGN KEY(id_customer) REFERENCES customers(id);

UPDATE wishlist
SET id_customer = 1
WHERE id = 9;

SELECT *
FROM wishlist;

SELECT	customers.email AS cust_email,
		customers.firstname AS cust_firstname,
        customers.lastname AS cust_lastname,
        products.id AS prod_id,
        products.name AS prod_name,
        wishlist.description AS wishlist_description
FROM wishlist
JOIN products ON (products.id = wishlist.id_product)
JOIN customers ON (customers.id = wishlist.id_customer);

SELECT * FROM products;
SELECT * FROM categories;

INSERT INTO categories (id, name)
VALUES  ('SAMPLE-01', 'SAMPLE-PRODUK-01'),
        ('SAMPLE-02', 'SAMPLE-PRODUK-02');
        
INSERT INTO products (id, name, price, quantity)
VALUES  ('CONTOH-01', 'SAMPLE-PRODUK-01', 100000, 10),
        ('CONTOH-02', 'SAMPLE-PRODUK-02', 200000, 20 ),
        ('CONTOH-03', 'SAMPLE-PRODUK-03', 300000, 30);
        
SELECT * FROM categories
INNER JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
LEFT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
RIGHT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
CROSS JOIN products;

CREATE TABLE numbers
(
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO numbers (id)
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

SELECT * FROM numbers;

SELECT numbers1.id, numbers2.id, (numbers1.id * numbers2.id) 
FROM numbers AS numbers1
CROSS JOIN numbers AS numbers2
ORDER BY numbers1.id, numbers2.id;