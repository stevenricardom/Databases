-- Poner la población en 0 para todas las ciudades que empiecen por la letra ‘b’
SET sql_safe_updates = 0;

UPDATE city_copia
SET Population = 0
WHERE Name LIKE 'B%';

SELECT * FROM city_copia WHERE Name LIKE 'B%';
