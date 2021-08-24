SHOW DATABASES;
USE belajar_mysql;

SELECT *
FROM products;

SELECT id,
	Lower(name) AS 'Name Lower',
    Upper(name) AS 'Name Upper',
    Length(name) AS 'Name Length'
FROM products;