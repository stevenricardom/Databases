-- Doblar la población en los países con área superficial ≥ 1246700

UPDATE country_copia
SET Population = Population * 2
WHERE SurfaceArea >= 1246700;


SELECT Code, Name, SurfaceArea, Population 
FROM country_copia
WHERE SurfaceArea >= 1246700;
