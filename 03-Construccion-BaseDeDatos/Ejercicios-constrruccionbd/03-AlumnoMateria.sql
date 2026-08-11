-- ------------------------------------------
-- EJERCICIO 3: Alumno, Materia e Inscribe
-- ------------------------------------------
CREATE DATABASE BD_Ejercicio3;
GO
USE BD_Ejercicio3;
GO
CREATE TABLE Alumno (
    Matricula VARCHAR(20) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido1 VARCHAR(50) NOT NULL,
    Semestre INT NOT NULL
);

CREATE TABLE Materia (
    Clave_materia VARCHAR(20) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Credito INT NOT NULL
);

CREATE TABLE Inscribe (
    Matricula VARCHAR(20),
    Clave_materia VARCHAR(20),
    FechaIncribe DATE,
    cal_final DECIMAL(4,2),
    PRIMARY KEY (Matricula, Clave_materia),
    CONSTRAINT fk_inscribe_alumno 
        FOREIGN KEY (Matricula) REFERENCES Alumno(Matricula) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_inscribe_materia 
        FOREIGN KEY (Clave_materia) REFERENCES Materia(Clave_materia) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

