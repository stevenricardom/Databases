-- Clona estructura + datos pero no foreign keys
CREATE TABLE city_copia LIKE city;
INSERT INTO city_copia SELECT * FROM city;

CREATE TABLE country_copia LIKE country;
INSERT INTO country_copia SELECT * FROM country;

CREATE TABLE countrylanguage_copia LIKE countrylanguage;
INSERT INTO countrylanguage_copia SELECT * FROM countrylanguage;
