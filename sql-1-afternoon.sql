CREATE TABLE person (
  id serial PRIMARY KEY,
  name varchar(255),
  age integer,
  height integer,
  city varchar(255),
  favorite_color varchar(255)
  )
  
INSERT INTO person (name,age,height,city,favorite_color)
VALUES
  	('Bryan',26,183,'Arlington','Maroon'),
    ('Mary',27,165,'Arlington','Gray'),
    ('Devon',26,180,'Arlington','Navy'),
    ('Austin',26,195,'Amarillo','Green'),
    ('Jabril',26,188,'Dallas','Black')
    

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age ASC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 27;

SELECT * FROM person WHERE age < 20 OR AGE > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'red';

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'navy';

SELECT * FROM person WHERE favorite_color ILIKE 'gray' OR favorite_color = 'Navy';

SELECT * FROM person WHERE favorite_color IN ('Orange','Green','Navy')

SELECT * FROM person WHERE favorite_color IN ('Gray','Maroon')

PART 2 TABLE - ORDERS

CREATE TABLE orders (
  person_id serial PRIMARY KEY,
  product_name varchar(255),
  product_price NUMERIC,
  quantity INTEGER);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (0,'avocadoes',3.50,200),(1,'beer',9.99,100000)

select * from orders

select sum(quantity) from orders;

select sum(product_price * quantity) from orders;

select sum(product_price * quantity) from orders WHERE person_id = 0;

select sum(product_price * quantity) from orders WHERE person_id = 1;




PART 3 TABLE - ARTIST

INSERT INTO artist (name) VALUES ('The Chariot'),('Everytime I Die'),('mewithoutYou');					

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist WHERE name LIKE 'Black%'

SELECT * FROM artist WHERE name LIKE '%Black%'




PART WHATEVER TABLE - EMPLOYEE

SELECT first_name, last_name FROM employee WHERE city = 'Calgary'

SELECT MAX(birth_date) from employee

SELECT MIN(birth_date) from employee

SELECT * FROM employee WHERE first_name ='Nancy' and last_name = 'Edwards'

SELECT * FROM employee WHERE reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';





NEXT PART TABLE INVOICE

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'

SELECT  MAX(total) FROM invoice

SELECT  MIN(total) FROM invoice

SELECT * FROM invoice WHERE total > 5;

SELECT COUNT(*) FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE BILLING_STATE IN('CA','TX','AZ')

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
