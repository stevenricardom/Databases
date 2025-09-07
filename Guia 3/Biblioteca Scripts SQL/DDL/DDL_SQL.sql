CREATE DATABASE db_biblioteca;
USE db_biblioteca;

-- =========================
-- TABLAS PRINCIPALES
-- =========================

CREATE TABLE Libro (
    codigo_internacional VARCHAR(50) PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autores TEXT NOT NULL,
    editorial VARCHAR(255),
    fecha_edicion DATE,
    -- Campo de temáticas (descriptores asociados al libro)
    tematicas TEXT NOT NULL
);

CREATE TABLE Biblioteca (
    id_biblioteca INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Biblioteca_Libro (
    id_biblioteca INT,
    codigo_internacional VARCHAR(50),
    cantidad_copias INT DEFAULT 1 CHECK (cantidad_copias > 0),
    PRIMARY KEY (id_biblioteca, codigo_internacional),
    FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca(id_biblioteca),
    FOREIGN KEY (codigo_internacional) REFERENCES Libro(codigo_internacional)
);

CREATE TABLE Convenio (
    id_biblioteca_1 INT,
    id_biblioteca_2 INT,
    fecha_convenio DATE,
    PRIMARY KEY (id_biblioteca_1, id_biblioteca_2),
    FOREIGN KEY (id_biblioteca_1) REFERENCES Biblioteca(id_biblioteca),
    FOREIGN KEY (id_biblioteca_2) REFERENCES Biblioteca(id_biblioteca),
    CHECK (id_biblioteca_1 <> id_biblioteca_2)
);

-- =========================
-- INSTITUTOS Y PRÉSTAMOS
-- =========================

CREATE TABLE Instituto (
    id_instituto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Prestamo (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_instituto INT,
    id_biblioteca INT,
    codigo_internacional VARCHAR(50),
    fecha_prestamo DATE NOT NULL,
    FOREIGN KEY (id_instituto) REFERENCES Instituto(id_instituto),
    FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca(id_biblioteca),
    FOREIGN KEY (codigo_internacional) REFERENCES Libro(codigo_internacional)
);

-- =========================
-- CÓDIGOS (DESCRIPTORES Y TÉRMINOS)
-- =========================

CREATE TABLE Codigo (
    id_codigo INT AUTO_INCREMENT PRIMARY KEY,
    texto VARCHAR(255) NOT NULL,
    tipo ENUM('DESCRIPTOR', 'TERMINO') NOT NULL
);

CREATE TABLE Biblioteca_Codigo (
    id_biblioteca INT,
    id_codigo INT,
    PRIMARY KEY (id_biblioteca, id_codigo),
    FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca(id_biblioteca),
    FOREIGN KEY (id_codigo) REFERENCES Codigo(id_codigo)
);

CREATE TABLE Descriptor_Info (
    id_codigo INT PRIMARY KEY,
    fecha_creacion DATE NOT NULL,
    FOREIGN KEY (id_codigo) REFERENCES Codigo(id_codigo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
