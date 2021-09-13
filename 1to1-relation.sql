CREATE TABLE wallet
(
  id INT NOT NULL AUTO_INCREMENT,
  id_customer INT NOT NULL,
  balance INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id),
  UNIQUE KEY id_customer_unique(id_customer),
  FOREIGN KEY fk_wallet_customer(id_customer) REFERENCES customers(id)
) ENGINE = InnoDB;

DESC wallet;

SELECT *
FROM customers;

INSERT INTO wallet(id_customer)
VALUES(1), (4);

SELECT *
FROM wallet;

SELECT	customers.email AS cust_email,
		customers.firstname AS cust_firstname,
        customers.lastname AS cust_lastname,
        wallet.balance AS wallet_balance
FROM wallet
JOIN customers ON (wallet.id_customer = customers.id);