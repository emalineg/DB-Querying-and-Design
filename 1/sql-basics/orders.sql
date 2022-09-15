CREATE TABLE orders (
   order_id SERIAL PRIMARY KEY, -- this will never be null because it's serialized
   person_id INTEGER,
   product_name VARCHAR(40),
   product_price INTEGER,
   quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'pasta', 13.99, 1),
(2, 'milkshake', 6.00, 3);


SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT 2, SUM(quantity*product_price) 
FROM orders;

