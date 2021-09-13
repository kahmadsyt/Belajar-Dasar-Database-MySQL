CREATE TABLE categories
(
  id VARCHAR(10)NOT NULL,
  name VARCHAR(10) NOT NULL,
  PRIMARY KEY(id)
) ENGINE = InnoDB;

DESC categories;
DESC products;

ALTER TABLE products
DROP COLUMN id_category;

ALTER TABLE products
ADD COLUMN id_category VARCHAR(10);

ALTER TABLE products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (id_category) REFERENCES categories (id);

SHOW CREATE TABLE products;

SELECT *
FROM products;

SELECT *
FROM categories;

INSERT INTO categories (id, name)
VALUES 	('LAP-01', 'LAPTOP HIGH END'),
		('LAP-02', 'LAPTOP STANDARD'),
        ('KOMP-01', 'KOMPUTER DESKTOP'),
        ('KOMP-02', 'KOMPUTER GAMING'),
        ('KAB-10', 'KABEL 10 Meter'),
        ('KAB-20', 'KABEL 20 Meter'),
        ('KAB-30', 'KABEL 30 Meter'),
        ('FD-32', 'FLASHDISK 32GB'),
        ('FD-16', 'FLASHDISK 16GB'),
        ('FD-8', 'FLASHDISK 8GB'),
        ('FD-4', 'FLASHDISK 4GB'),
        ('FD-2', 'FLASHDISK 2GB'),
        ('SD-01', 'SSD 1TB'),
        ('SD-500', 'SSD 500GB'),
        ('SD-250', 'SSD 250GB'),
        ('RAM-01', 'RAM 32GB'),
        ('RAM-02', 'RAM 16GB'),
        ('RAM-03', 'RAM 4GB');

UPDATE products
SET id_category = 'LAP-01'
WHERE id IN ('P0001');

UPDATE products
SET id_category = 'LAP-02'
WHERE id IN ('P0018');

UPDATE products
SET id_category = 'KOMP-02'
WHERE id IN ('P0002');

UPDATE products
SET id_category = 'SD-01'
WHERE id IN ('P0010');

UPDATE products
SET id_category = 'SD-250'
WHERE id IN ('P0012');

UPDATE products
SET id_category = 'SD-500'
WHERE id IN ('P0011');

UPDATE products
SET id_category = 'KAB-10'
WHERE id IN ('P0003');

UPDATE products
SET id_category = 'KAB-30'
WHERE id IN ('P0004');

UPDATE products
SET id_category = 'FD-32'
WHERE id IN ('P0005');

UPDATE products
SET id_category = 'FD-16'
WHERE id IN ('P0006');

UPDATE products
SET id_category = 'FD-8'
WHERE id IN ('P0007');

UPDATE products
SET id_category = 'FD-4'
WHERE id IN ('P0008');

UPDATE products
SET id_category = 'FD-2'
WHERE id IN ('P0009');

UPDATE products
SET id_category = 'RAM-01'
WHERE id IN ('P0014');

UPDATE products
SET id_category = 'RAM-02'
WHERE id IN ('P0015');

UPDATE products
SET id_category = 'RAM-03'
WHERE id IN ('P0016');

SELECT	products.id,
		products.name,
        categories.name
FROM products
JOIN categories ON (categories.id = products.id_category);