CREATE TABLE person (
    id SERIAL PRIMARY KEY, -- this will never be null because it's serialized
    name VARCHAR(40) NOT NULL,
    age INTEGER,
    height_in_cm INTEGER,
    city VARCHAR(40),
    favourite_color VARCHAR(20)
);

INSERT INTO person (name, age, height_in_cm, city, favourite_color)
VALUES ('Emaline', 24, 165, irvine, porple),
('Carlos', 25, 185, irvine, teal),
('KumoKage', 2, NULL, irvine, teal),
('Rai', 1, NULL, irvine, yellow),
('Mariella', 2, NULL, NULL, yellow);


select * from person
order by height__in_cm desc;

select * from person
order by height_in_cm;

select * from person
order by age desc;

select * from person
WHERE age > 20;

select * from person
WHERE age = 18;

select * from person 
WHERE age < 20 
AND age > 30;

select * from person
WHERE age != 27;

select * from person
WHERE favourite_color != 'red';

select * from person
WHERE favourite_color != 'red'
AND favourite_color != 'blue';

select * from person
WHERE favourite_color = 'orange'
OR favourite_color = 'green';

select * from person
WHERE favourite_color in ('orange', 'green', 'blue');

select * from person
WHERE favourite_color in ('yellow', 'purple');


