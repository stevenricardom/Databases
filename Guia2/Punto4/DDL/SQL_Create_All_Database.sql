-- CREATE DATABASE db_conferencias;
USE db_conferencias;

DROP TABLE Eventos, Conferencias, SalonesEventos, Conferencistas;

-- =========================
-- Tabla de Conferencistas
-- =========================
CREATE TABLE Conferencistas(
  conferencistaId INT AUTO_INCREMENT NOT NULL,
  conferencistaNombre VARCHAR(20) NOT NULL,
  conferencistaApellido VARCHAR(20) NOT NULL, 
  conferencistaHorasTrabajadas INT NOT NULL,
  CONSTRAINT pk_conferencistas PRIMARY KEY (conferencistaId)
);

-- =========================
-- Tabla de SalonesEventos
-- =========================
CREATE TABLE SalonesEventos(
  salonId INT AUTO_INCREMENT NOT NULL,
  salonNombre VARCHAR(20) NOT NULL,
  salonTipo VARCHAR(20) NOT NULL,
  CONSTRAINT pk_salones PRIMARY KEY (salonId)
);

-- =========================
-- Tabla de Conferencias
-- =========================
CREATE TABLE Conferencias(
  conferenciaId INT AUTO_INCREMENT NOT NULL,
  conferenciaNombre VARCHAR(20) NOT NULL,
  conferenciaDuracion INT NOT NULL,
  conferencistaId INT NOT NULL,
  CONSTRAINT pk_conferencias PRIMARY KEY (conferenciaId),
  
  CONSTRAINT fk_conferencia_conferencista 
    FOREIGN KEY (conferencistaId) REFERENCES Conferencistas(conferencistaId)
);

-- =========================
-- Tabla de Eventos
-- =========================
CREATE TABLE Eventos(
  eventoFecha DATE NOT NULL,
  salonId INT NOT NULL,
  conferenciaId INT NOT NULL,
  
  CONSTRAINT pk_eventos PRIMARY KEY (eventoFecha),
  
  CONSTRAINT fk_evento_salon 
    FOREIGN KEY (salonId) REFERENCES SalonesEventos(salonId),
    
  CONSTRAINT fk_evento_conferencia 
    FOREIGN KEY (conferenciaId) REFERENCES Conferencias(conferenciaId)
);
