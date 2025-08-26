SELECT * FROM conferencias;
SELECT * FROM conferencistas;
-- SELECT * FROM eventos;
-- SELECT * FROM saloneseventos;

SELECT c.conferenciaNombre, c.conferenciaDuracion , pc.conferencistaNombre FROM conferencias AS c
JOIN conferencistas pc WHERE pc.conferencistaNombre = 'Erika' AND c.conferenciaDuracion = 1;