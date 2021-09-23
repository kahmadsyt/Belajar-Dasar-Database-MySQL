CREATE TABLE guestbooks
(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    title VARCHAR(200) NOT NULL,
    content TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE guestbooks;

SELECT * FROM customers;

INSERT INTO guestbooks (email, title, content)
VALUES  ('guest-01@gmail.com', 'CONTOH-TITLE-01', 'CONTOH-CONTENT-01'),
        ('guest-02@gmail.com', 'CONTOH-TITLE-02', 'CONTOH-CONTENT-02'),
        ('guest-03@gmail.com', 'CONTOH-TITLE-03', 'CONTOH-CONTENT-03'),
        ('achmadkamil17@gmail.com', 'CONTOH-TITLE-01', 'CONTOH-CONTENT-01'),
        ('achmadkamil17@gmail.com', 'CONTOH-TITLE-02', 'CONTOH-CONTENT-02'),
        ('achmadkamil17@gmail.com', 'CONTOH-TITLE-03', 'CONTOH-CONTENT-03');
        
SELECT * FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;

SELECT email FROM customers
UNION
SELECT email FROM guestbooks;

SELECT email FROM customers
UNION ALL
SELECT email FROM guestbooks;

SELECT total_email.email, COUNT(total_email.email) FROM
(SELECT email FROM customers
UNION ALL
SELECT email FROM guestbooks) AS total_email
GROUP BY total_email.email;

/** Contoh penggunaan Set Operator "INTERSECT" dengan query "WHERE" dan"INNER JOIN"**/
SELECT DISTINCT email FROM customers
WHERE email IN (SELECT DISTINCT email FROM guestbooks);

SELECT DISTINCT customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email);
/** END **/


/** Contoh penggunaan Set Operator "MINUS" dengan query "LEFT JOIN"**/
SELECT DISTINCT customers.email, guestbooks.email FROM customers
LEFT JOIN guestbooks ON (customers.email = guestbooks.email)
WHERE guestbooks.email IS NULL;
/** END **/