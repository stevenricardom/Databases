USE db_biblioteca;

-- =========================
-- INSERTS PARA LIBRO
-- =========================
INSERT INTO Libro (codigo_internacional, titulo, autores, editorial, fecha_edicion, tematicas) VALUES
('978-3-16-148410-0', 'Lógica para Resolver Problemas', 'Juan Pérez', 'Editorial Alfa', '2020-05-12', 'Lógica'),
('978-0-596-52068-7', 'Introducción a la Programación', 'Ana Torres', 'TechBooks', '2021-08-21', 'Programación'),
('978-84-376-0494-7', 'Historia de la Filosofía', 'Luis Gómez', 'Filos Ediciones', '2019-01-15', 'Historia'),
('978-1-4028-9462-6', 'Bases de Datos Relacionales', 'María López', 'DB Press', '2022-03-30', 'Bases de Datos'),
('978-0-13-110362-7', 'El Arte de Programar', 'Donald Knuth', 'Pearson', '2021-11-11', 'Programación'),
('978-1-56619-909-4', 'Redes de Computadoras', 'Carlos Ruiz', 'NetWorld', '2023-04-01', 'Redes'),
('978-3-598-21500-1', 'Inteligencia Artificial', 'Sara Castillo', 'AI Books', '2023-06-18', 'Inteligencia Artificial'),
('978-1-891830-77-8', 'Matemáticas Discretas', 'Pedro Martínez', 'MatPress', '2022-09-09', 'Matemáticas'),
('978-1-60309-025-4', 'Sistemas Operativos', 'Laura Sánchez', 'SysPress', '2020-02-14', 'Sistemas Operativos'),
('978-0-201-03801-9', 'Algoritmos y Complejidad', 'Andrés López', 'CompBooks', '2021-12-01', 'Algoritmos');

-- =========================
-- INSERTS PARA BIBLIOTECA
-- =========================
INSERT INTO Biblioteca (nombre) VALUES
('Biblioteca Central'),
('Biblioteca de Ingeniería'),
('Biblioteca de Ciencias'),
('Biblioteca de Filosofía'),
('Biblioteca Digital'),
('Biblioteca de Matemáticas'),
('Biblioteca de Informática'),
('Biblioteca de Historia'),
('Biblioteca Universitaria'),
('Biblioteca de Tecnología');

-- =========================
-- INSERTS PARA BIBLIOTECA_LIBRO
-- =========================
INSERT INTO Biblioteca_Libro (id_biblioteca, codigo_internacional, cantidad_copias) VALUES
(1, '978-3-16-148410-0', 3),
(1, '978-0-596-52068-7', 5),
(2, '978-1-4028-9462-6', 4),
(2, '978-0-13-110362-7', 2),
(3, '978-1-56619-909-4', 6),
(3, '978-3-598-21500-1', 3),
(4, '978-84-376-0494-7', 4),
(5, '978-1-891830-77-8', 7),
(6, '978-1-60309-025-4', 3),
(7, '978-0-201-03801-9', 5);

-- =========================
-- INSERTS PARA CONVENIO
-- =========================
INSERT INTO Convenio (id_biblioteca_1, id_biblioteca_2, fecha_convenio) VALUES
(1, 2, '2022-01-10'),
(1, 3, '2023-03-05'),
(2, 5, '2023-07-12'),
(3, 6, '2023-08-01'),
(4, 7, '2022-09-09'),
(5, 8, '2023-10-02'),
(6, 9, '2022-11-25'),
(7, 10, '2023-02-14'),
(8, 9, '2023-04-04'),
(9, 10, '2023-05-20');

-- =========================
-- INSERTS PARA INSTITUTO
-- =========================
INSERT INTO Instituto (nombre) VALUES
('Instituto Tecnológico A'),
('Instituto de Matemáticas B'),
('Instituto de Historia C'),
('Instituto de Computación D'),
('Instituto de Filosofía E'),
('Instituto Politécnico F'),
('Instituto de Ciencias G'),
('Instituto de Ingeniería H'),
('Instituto Digital I'),
('Instituto de Tecnología J');

-- =========================
-- INSERTS PARA PRESTAMO
-- =========================
INSERT INTO Prestamo (id_instituto, id_biblioteca, codigo_internacional, fecha_prestamo) VALUES
(1, 1, '978-3-16-148410-0', '2023-01-15'),
(2, 2, '978-1-4028-9462-6', '2023-02-20'),
(3, 4, '978-84-376-0494-7', '2023-03-10'),
(4, 7, '978-0-596-52068-7', '2023-04-22'),
(5, 4, '978-84-376-0494-7', '2023-05-05'),
(6, 6, '978-1-60309-025-4', '2023-06-01'),
(7, 3, '978-1-56619-909-4', '2023-06-18'),
(8, 7, '978-0-201-03801-9', '2023-07-10'),
(9, 5, '978-1-891830-77-8', '2023-08-02'),
(10, 1, '978-0-13-110362-7', '2023-09-12');

-- =========================
-- INSERTS PARA CODIGO
-- =========================
INSERT INTO Codigo (texto, tipo) VALUES
('Lógica', 'DESCRIPTOR'),
('Matemáticas', 'DESCRIPTOR'),
('Programación', 'DESCRIPTOR'),
('Algoritmos', 'DESCRIPTOR'),
('Bases de Datos', 'DESCRIPTOR'),
('Ordenador', 'TERMINO'),
('Equipo', 'TERMINO'),
('Máquina', 'TERMINO'),
('Redes', 'DESCRIPTOR'),
('Historia', 'DESCRIPTOR');

-- =========================
-- INSERTS PARA BIBLIOTECA_CODIGO
-- =========================
INSERT INTO Biblioteca_Codigo (id_biblioteca, id_codigo) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(7, 10);

-- =========================
-- INSERTS PARA DESCRIPTOR_INFO
-- =========================
INSERT INTO Descriptor_Info (id_codigo, fecha_creacion) VALUES
(1, '2020-01-01'),
(2, '2020-02-01'),
(3, '2021-03-15'),
(4, '2021-05-20'),
(5, '2022-06-01'),
(9, '2023-01-10'),
(10, '2023-03-22');
