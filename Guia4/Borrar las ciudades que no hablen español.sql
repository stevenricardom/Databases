-- Borrar las ciudades cuyos países no tengan español como idioma

DELETE c
FROM city_copia c
JOIN countrylanguage_copia cl ON c.CountryCode = cl.CountryCode
WHERE cl.Language <> 'Spanish';


SELECT * FROM city_copia;
