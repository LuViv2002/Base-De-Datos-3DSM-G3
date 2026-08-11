-- ------------------------------------------
-- EJERCICIO 1: Paciente y Expediente
-- ------------------------------------------
CREATE DATABASE BD_Ejercicio1;
USE BD_Ejercicio1;

CREATE TABLE Paciente (
    NumPaciente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Ape1 VARCHAR(50) NOT NULL,
    Ape2 VARCHAR(50),
    FechaNaci DATE
);

CREATE TABLE Expediente (
    NoExpediente INT AUTO_INCREMENT PRIMARY KEY,
    FechaApertura DATE NOT NULL,
    TipoDeSangre VARCHAR(10),
    NumPaciente INT UNIQUE,
    CONSTRAINT fk_expediente_paciente 
        FOREIGN KEY (NumPaciente) REFERENCES Paciente(NumPaciente) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

## Diagrama 
![Diagrama 1 E-R](/img/sql/Ejercicio1.png)


