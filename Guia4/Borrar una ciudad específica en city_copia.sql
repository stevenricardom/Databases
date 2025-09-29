-- Borrar una ciudad específica en city_copia (ejemplo: ID = 1)


-- Borrar solo una ciudad
DELETE FROM city_copia
WHERE ID = 1
LIMIT 1;


SELECT * FROM city_copia;
