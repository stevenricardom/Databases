-- Crear tabla city_col con todas las ciudades de Colombia

CREATE TABLE city_col AS
SELECT *
FROM city_copia
WHERE CountryCode = 'COL';


SELECT * FROM city_col;