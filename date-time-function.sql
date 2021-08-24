SHOW DATABASES;
DESCRIBE products;

SELECT id, created_at,
	EXTRACT(YEAR FROM created_at) AS YEAR,
    EXTRACT(MONTH FROM created_at) AS MONTH
FROM products;

SELECT id, created_at, YEAR (created_at), MONTH (created_at)
FROM products;