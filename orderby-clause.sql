SELECT *
FROM products
ORDER BY category ASC;

SELECT *
FROM products
ORDER BY category DESC;

SELECT id, name, category
FROM products
ORDER BY name;

SELECT id, name, category, price
FROM products
ORDER BY category ASC, price DESC;