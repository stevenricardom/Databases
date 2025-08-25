-- SELECT * FROM conferencias;
-- SELECT * FROM conferencistas;
-- SELECT * FROM eventos;
-- SELECT * FROM saloneseventos;

SELECT c.conferenciaNombre, conferenciaDuracion 
FROM conferencias AS c
WHERE conferenciaDuracion >= 2;


