-- ------------------------------------------
-- EJERCICIO 2: Profesor y Curso
-- ------------------------------------------
CREATE DATABASE BD_Ejercicio2;
USE BD_Ejercicio2;

CREATE TABLE Profesor (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Especialidad VARCHAR(100)
);

CREATE TABLE Curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    creditos INT DEFAULT 0,
    fecha_naci DATE,
    id_profesor INT,
    CONSTRAINT fk_curso_profesor 
        FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor) 
        ON DELETE SET NULL ON UPDATE CASCADE
);
