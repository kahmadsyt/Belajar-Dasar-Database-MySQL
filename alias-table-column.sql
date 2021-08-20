SHOW TABLES;
DESCRIBE products;

SELECT *
FROM products;

SELECT id		AS Kode,
	   name		AS Nama,
       category	AS Kategori,
       price	AS Harga,
       quantity	AS Stok
FROM products;

SELECT prod.id			AS Kode,
	   prod.name		AS Nama,
       prod.category	AS Kategori,
       prod.price		AS Harga,
       prod.quantity	AS Stok
FROM products AS prod;