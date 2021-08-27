SHOW DATABASES;
USE belajar_mysql;
SHOW TABLES;

SELECT *
FROM products;

SELECT
COUNT(id) as 'Jumlah Produk'
FROM products;

SELECT
MAX(price) AS 'Harga Produk Termahal'
FROM products;

SELECT
MIN(price) AS 'Harga Produk Termurah'
FROM products;

SELECT
AVG(price) AS 'Rata-rata Harga Produk'
FROM products;

SELECT
SUM(quantity) AS 'Total Stok Produk'
FROM products;