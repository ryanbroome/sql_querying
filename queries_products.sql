--product queries for SQL QUERYING EXERCISE --

--QUERY 1 --
INSERT INTO products(name, price, can_be_returned) 
VALUES('chair', 44.00, False);

--QUERY 2 --
INSERT INTO products(name, price, can_be_returned) 
VALUES('stool', 25.99, True);

--QUERY 3 -- 
INSERT INTO products(name, price, can_be_returned) 
VALUES('table', 124.00, False);

--QUERY 4--
SELECT * FROM products;

--QUERY 5 --
SELECT name FROM products;

--QUERY 6 --
SELECT name, price FROM products;

---QUERY 7 --
INSERT INTO products(name, price, can_be_returned) 
VALUES('Segway', 99.99, False);

--QUERY 8 --
SELECT name, can_be_returned FROM products
WHERE can_be_returned = True;

--QUERY 9 --
SELECT name FROM products
WHERE price < 44;

--QUERY 10 --
SELECT name FROM products
WHERE price BETWEEN 22.50 AND 99.99;

-- QUERY 11 --
UPDATE products SET price = price -20;

--QUERY 12 --
DELETE FROM products WHERE price < 25;

--QUERY 13--
UPDATE products SET price = price + 20;

--QUERY 14 --
UPDATE products SET can_be_returned = True;

--END SQL QUERYING EXERCISE -- 