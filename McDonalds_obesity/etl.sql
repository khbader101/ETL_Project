-- Create tables
CREATE TABLE mcdonalds (
  id SERIAL,
  address VARCHAR(100),
  city TEXT
);

CREATE TABLE cities (
  id SERIAL,
  city TEXT,
  bmi FLOAT,
  population INT
);

-- Query to check successful load
select * from mcdonalds
select * from cities

-- Join tables on city
select count(*) as McDonalds_count, m.city, round(avg(c.bmi)) as BMI, round(avg(c.population)) as Population
from mcdonalds m
inner join cities c on m.city = c.city
group by m.city


