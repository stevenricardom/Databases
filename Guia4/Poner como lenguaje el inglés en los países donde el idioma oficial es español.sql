-- Poner como lenguaje el inglés en los países donde el idioma oficial es español


-- Eliminar español donde ya exista inglés
DELETE FROM countrylanguage_copia
WHERE Language = 'Spanish'
  AND CountryCode IN (
      SELECT CountryCode
      FROM (SELECT * FROM countrylanguage_copia) tmp
      WHERE Language = 'English'
  );

-- Ahora sí, actualizar el resto
UPDATE countrylanguage_copia
SET Language = 'English'
WHERE IsOfficial = 'T' AND Language = 'Spanish';

SELECT * FROM countrylanguage_copia;

SELECT cl.Language, cl.CountryCode, cl.IsOfficial FROM countrylanguage_copia cl
WHERE Language = 'Spanish';
