-- =========================
-- Insertar empleados
-- =========================
INSERT INTO empleado (cedula, nombre, calle, ciudad, cedula_jefe) VALUES
(1, 'Carlos',  'Calle 10', 'Bogota', NULL),      -- jefe
(2, 'Erika',   'Calle 10', 'Bogota', 1),         -- vive en misma calle/ciudad que su jefe Carlos
(3, 'Luis',    'Calle 20', 'Bogota', 1),         -- mismo jefe pero distinta calle
(4, 'Maria',   'Av 30',    'Medellin', NULL),    -- jefa sin jefe
(5, 'Pedro',   'Av 30',    'Medellin', 4),       -- vive en misma calle/ciudad que su jefa Maria
(6, 'Ana',     'Cra 15',   'Cali', NULL);        -- independiente

-- =========================
-- Insertar empresas
-- =========================
INSERT INTO empresa (nit_empresa, nombre, ciudad) VALUES
(100, 'Banco Mundial', 'Bogota'),
(200, 'Banco de la Ciudad', 'Medellin'),
(300, 'TechSoft', 'Cali');

-- =========================
-- Insertar relaciones de trabajo
-- =========================
INSERT INTO trabaja (cedula, nit_empresa, sueldo, cargo) VALUES
(1, 100, 3000.00, 'Gerente'),
(2, 200, 2000.00, 'Analista'),
(3, 100, 2500.00, 'Asistente'),
(4, 200, 4000.00, 'Directora'),
(5, 200, 1800.00, 'Secretario'),
(6, 300, 2200.00, 'Programadora');
