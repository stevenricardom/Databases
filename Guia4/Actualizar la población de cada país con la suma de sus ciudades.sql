-- Actualizar la población de cada país con la suma de sus ciudades

SET sql_safe_updates = 0;

UPDATE country_copia c
JOIN (
    SELECT CountryCode, SUM(Population) AS TotalPop
    FROM city_copia
    GROUP BY CountryCode
) t ON c.Code = t.CountryCode
SET c.Population = t.TotalPop;

SELECT Code, Name, Population FROM country_copia;