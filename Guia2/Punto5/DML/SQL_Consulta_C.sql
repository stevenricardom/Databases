-- SELECT * FROM conferencias;
-- SELECT * FROM conferencistas;
-- SELECT * FROM eventos;
-- SELECT * FROM saloneseventos;

SELECT c.conferenciaNombre, pc.conferencistaNombre, pc.conferencistaApellido
FROM conferencias c
INNER JOIN conferencistas pc ON pc.conferencistaId = c.conferenciaId;


