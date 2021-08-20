DESCRIBE products;

SELECT *
FROM products;

SELECT id, name, price, quantity
FROM products
WHERE price > 500000;

SELECT id, name, price, quantity
FROM products
WHERE id IN ('P0001', 'P0002', 'P0003');

SELECT *
FROM products
WHERE quantity = 0;

SELECT *
FROM products
WHERE quantity = 100;

SELECT *
FROM products
WHERE price = 1000000;

SELECT *
FROM products
WHERE description IS NULL;

SELECT *
FROM products
WHERE quantity > 10 AND price > 500000;

SELECT *
FROM products
WHERE quantity > 10 OR price > 500000;

SELECT *
FROM products
WHERE (category = 'STORAGE DEVICE' OR quantity > 10)
	AND price > 1000000;

SELECT *
FROM products
WHERE category = 'STORAGE DEVICE' AND quantity > 50
	OR price > 1000000;

SELECT *
FROM products
WHERE category LIKE 'STO%';

SELECT *
FROM products
WHERE price BETWEEN 500000 AND 1000000;