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