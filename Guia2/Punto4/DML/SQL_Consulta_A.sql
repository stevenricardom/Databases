-- SELECT * FROM conferencias;
-- SELECT * FROM conferencistas;
-- SELECT * FROM eventos;
-- SELECT * FROM saloneseventos;

SELECT s.salonNombre, s.salonTipo, e.eventoFecha 
FROM saloneseventos AS s, eventos AS e;


