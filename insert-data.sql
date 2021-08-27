SHOW TABLES;

CREATE TABLE products
(
  id VARCHAR(10) NOT NULL,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price INT UNSIGNED NOT NULL,
  quantity INT UNSIGNED NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

SHOW TABLES;
DESCRIBE products;

INSERT INTO products(id, name, price, quantity)
VALUES ('P0001', 'LAPTOP GAMING', 15000000, 100);

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P0002', 'KOMPUTER DESKTOP GAMING', 'KOMPUTER DESKTOP GAMING BEST SELLER', 13000000, 50);

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P0003', 'KABEL HDMI', 'KABEL HDMI 10 METER', 1000000, 100),
       ('P0004', 'KABEL VGA', 'KABEL VGA 30 METER', 250000, 70),
       ('P0005', 'FLASHDISK 32GB', 'KINGSTON', 300000, 100),
       ('P0006', 'FLASHDISK 16GB', 'SAMSUNG', 250000, 50),
       ('P0007', 'FLASHDISK 8GB', 'HP', 200000, 20),
       ('P0008', 'FLASHDISK 4GB', 'SANDISK', 70000, 50),
       ('P0009', 'FLASHDISK 2GB', 'DATATRAVELER', 50000, 30),
       ('P0010', 'SSD 1TB', 'SEAGATE', 1500000, 10),
       ('P0011', 'SSD 500GB', 'WD BLUE', 980000, 15),
       ('P0012', 'SSD 250GB', 'VIVAN', 750000, 25),
       ('P0013', 'SSD 128GB', 'BARRACUDA', 700000, 30),
       ('P0014', 'RAM 32GB', 'SAMSUNG', 2200000, 25),
       ('P0015', 'RAM 16GB', 'V-GEN', 1750000, 27);

SELECT *
FROM products;

INSERT INTO products(id, name, category, description, price, quantity)
VALUES ('P0016', 'RAM 4GB', 'MEMORY', 'KINGSTON', 800000, 50);

ALTER TABLE products
ADD CONSTRAINT price_check CHECK (price >= 10000);

INSERT INTO products(id, name, category, description, price, quantity)
VALUES ('P0017', 'TETS', 'TEST', 'TEST', 5000, 50);