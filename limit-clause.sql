SHOW DATABASES;
USE belajar_mysql;
DESCRIBE products;

SELECT *
FROM products
WHERE price > 100000
ORDER BY price
LIMIT 5, 5;

SELECT *
FROM products
ORDER BY id
LIMIT 5, 5;