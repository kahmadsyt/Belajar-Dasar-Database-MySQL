SHOW DATABASES;
USE belajar_mysql;
SHOW TABLES;

SELECT *
FROM products;

SELECT
COUNT(id) as 'Jumlah Produk', category
FROM products
GROUP BY category;

SELECT
MAX(price) AS 'Harga Produk Termahal', category
FROM products
GROUP BY category;

SELECT
MIN(price) AS 'Harga Produk Termurah', category
FROM products
GROUP BY category;

SELECT
AVG(price) AS 'Rata-rata Harga Produk', category
FROM products
GROUP BY category;

SELECT
SUM(quantity) AS 'Total Stok Produk', category
FROM products
GROUP BY category;

SELECT
COUNT(quantity) as 'Total Produk', category
FROM products
GROUP BY category
HAVING 'Total Produk' <= 10;