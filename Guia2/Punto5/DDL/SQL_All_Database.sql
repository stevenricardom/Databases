USE db_empresa;

-- =========================
-- Tabla EMPLEADO
-- =========================
CREATE TABLE empleado (
  cedula INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  calle VARCHAR(50),
  ciudad VARCHAR(50),
  cedula_jefe INT,
  CONSTRAINT pk_empleado PRIMARY KEY (cedula),
  CONSTRAINT fk_empleado_jefe FOREIGN KEY (cedula_jefe) 
    REFERENCES empleado(cedula)
);

-- =========================
-- Tabla EMPRESA
-- =========================
CREATE TABLE empresa (
  nit_empresa INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  ciudad VARCHAR(50),
  CONSTRAINT pk_empresa PRIMARY KEY (nit_empresa)
);

-- =========================
-- Tabla TRABAJA
-- =========================
CREATE TABLE trabaja (
  cedula INT NOT NULL,
  nit_empresa INT NOT NULL,
  sueldo DECIMAL(10,2),
  cargo VARCHAR(50),
  CONSTRAINT pk_trabaja PRIMARY KEY (cedula, nit_empresa),
  CONSTRAINT fk_trabaja_empleado FOREIGN KEY (cedula) 
    REFERENCES empleado(cedula),
  CONSTRAINT fk_trabaja_empresa FOREIGN KEY (nit_empresa) 
    REFERENCES empresa(nit_empresa)
);
