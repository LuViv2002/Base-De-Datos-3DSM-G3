-- ------------------------------------------
-- EJERCICIO 6: Empresa / Universidad (Modelo Relacional)
-- ------------------------------------------
CREATE DATABASE BD_Ejercicio6;
USE BD_Ejercicio6;

CREATE TABLE Departamento (
    Numero_departamento INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Gerente_SSN VARCHAR(20),
    Fecha_inicio DATE
);

CREATE TABLE Empleado (
    SSN VARCHAR(20) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Fecha_nacimiento DATE,
    Sexo CHAR(1),
    Num_Depto INT,
    Gerente_SSN VARCHAR(20),
    Salario DECIMAL(10,2),
    CONSTRAINT fk_emp_depto 
        FOREIGN KEY (Num_Depto) REFERENCES Departamento(Numero_departamento),
    CONSTRAINT fk_emp_gerente 
        FOREIGN KEY (Gerente_SSN) REFERENCES Empleado(SSN)
);

ALTER TABLE Departamento 
    ADD CONSTRAINT fk_depto_gerente 
    FOREIGN KEY (Gerente_SSN) REFERENCES Empleado(SSN);

CREATE TABLE Ubicacion (
    Ubicacion VARCHAR(100),
    Num_Departamento INT,
    PRIMARY KEY (Ubicacion, Num_Departamento),
    CONSTRAINT fk_ubic_depto 
        FOREIGN KEY (Num_Departamento) REFERENCES Departamento(Numero_departamento) ON DELETE CASCADE
);

CREATE TABLE Proyecto (
    Num_proyecto INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(100),
    Numero_departamento INT,
    CONSTRAINT fk_proy_depto6 
        FOREIGN KEY (Numero_departamento) REFERENCES Departamento(Numero_departamento)
);

CREATE TABLE Trabaja_en (
    SSN_empleado VARCHAR(20),
    Num_proyecto INT,
    Horas DECIMAL(5,2),
    PRIMARY KEY (SSN_empleado, Num_proyecto),
    CONSTRAINT fk_te_emp 
        FOREIGN KEY (SSN_empleado) REFERENCES Empleado(SSN),
    CONSTRAINT fk_te_proy 
        FOREIGN KEY (Num_proyecto) REFERENCES Proyecto(Num_proyecto)
);

CREATE TABLE Dependiente (
    Empleado_SSN VARCHAR(20),
    Nombre VARCHAR(50),
    Sexo CHAR(1),
    Relacion VARCHAR(50),
    PRIMARY KEY (Empleado_SSN, Nombre),
    CONSTRAINT fk_depend_emp 
        FOREIGN KEY (Empleado_SSN) REFERENCES Empleado(SSN) ON DELETE CASCADE
);

## Diagrama 
![Diagrama 1 E-R](/img/sql/Ejercicio6.png)