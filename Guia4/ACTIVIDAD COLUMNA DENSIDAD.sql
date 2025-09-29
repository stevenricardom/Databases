USE db_guia4;
SET sql_safe_updates = 0;

-- 1) Agregar columna de densidad poblacional
ALTER TABLE country_copia
ADD COLUMN DensidadPoblacional DECIMAL(18,6);

-- 2) Calcular y guardar la densidad poblacional desde la tabla original
UPDATE country_copia cc
JOIN country c ON cc.Code = c.Code
SET cc.DensidadPoblacional = c.Population / NULLIF(c.SurfaceArea,0);

-- 3) Verificar los datos actualizados
SELECT Code, Name, Population, SurfaceArea, DensidadPoblacional
FROM country_copia