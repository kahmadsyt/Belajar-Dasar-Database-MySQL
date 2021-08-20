SHOW DATABASES;
USE belajar_mysql;
SHOW TABLES;
DESCRIBE products;

SELECT *
FROM products;

UPDATE products
SET category = 'DESKTOP PC'
WHERE id = 'P0002';

UPDATE products
SET description = 'LAPTOP GAMING'
WHERE id = 'P0001';

UPDATE products
SET category = 'KABEL'
WHERE id = 'P0003';

UPDATE products
SET category = 'KABEL'
WHERE id = 'P0004';

UPDATE products
SET price = price + 20000
WHERE id = 'P0011';

UPDATE products
SET price = price - 2000
WHERE id = 'P0011';