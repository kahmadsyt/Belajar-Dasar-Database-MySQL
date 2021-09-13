SHOW TABLES;
DESCRIBE products;

SELECT *
FROM products;

ALTER TABLE products
ADD FULLTEXT product_search (name, description);

ALTER TABLE products
DROP INDEX product_search (name, description);

SELECT *
FROM products
WHERE name LIKE '%GAMING' OR DESCRIPTION LIKE '%GAMING';

SELECT *
FROM products
WHERE MATCH(name, description) AGAINST('FLASHDISK' IN NATURAL LANGUAGE MODE);

SELECT *
FROM products
WHERE MATCH(name, description) AGAINST('+GAMING -KOMPUTER' IN BOOLEAN MODE);

SELECT *
FROM products
WHERE MATCH(name, description) AGAINST('GAMING' WITH QUERY EXPANSION);