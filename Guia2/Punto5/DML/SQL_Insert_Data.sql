
-- =========================
-- Insertar Conferencistas
-- =========================
INSERT INTO Conferencistas (conferencistaNombre, conferencistaApellido, conferencistaHorasTrabajadas)
VALUES
('Erika', 'Lopez', 15),
('Carlos', 'Martinez', 20),
('Ana', 'Gomez', 10),
('Luis', 'Ramirez', 25);

-- =========================
-- Insertar SalonesEventos
-- =========================
INSERT INTO SalonesEventos (salonNombre, salonTipo)
VALUES
('Auditorio Central', 'Auditorio'),
('Sala 101', 'Aula'),
('Sala Virtual', 'Virtual'),
('Laboratorio 3', 'Laboratorio');

-- =========================
-- Insertar Conferencias
-- =========================
INSERT INTO Conferencias (conferenciaNombre, conferenciaDuracion, conferencistaId)
VALUES
('Bases de Datos', 2, 2),       -- Carlos Martínez, dura 2h
('Inteligencia AI', 3, 4),      -- Luis Ramírez, dura 3h
('Diseño Web', 1, 1),           -- Erika López, dura 1h
('Redes Avanzadas', 2, 3);      -- Ana Gómez, dura 2h

-- =========================
-- Insertar Eventos
-- =========================
INSERT INTO Eventos (eventoFecha, salonId, conferenciaId)
VALUES
('2025-08-10', 1, 1),  -- Evento en Auditorio Central con Bases de Datos
('2025-08-11', 2, 2),  -- Evento en Sala 101 con Inteligencia AI
('2025-08-12', 3, 3),  -- Evento en Sala Virtual con Diseño Web
('2025-08-13', 4, 4);  -- Evento en Laboratorio 3 con Redes Avanzadas
