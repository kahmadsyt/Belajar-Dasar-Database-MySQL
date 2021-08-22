SHOW DATABASES;
USE belajar_mysql;
DESCRIBE products;

SELECT 10 + 10 AS hasil;

SELECT id, name, price, price
DIV 1000 AS 'Price in K'
FROM products;

SELECT id, COS(price), SIN(price), TAN(price)
FROM products;

SELECT id, name, price
FROM products
WHERE price DIV 1000;