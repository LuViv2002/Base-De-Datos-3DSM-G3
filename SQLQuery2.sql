CREATE DATABASE bdconstraints;
GO

USE bdconstraints;
GO

CREATE TABLE paciente(
Numpaciente INT NOT NULL,
Nombre VARCHAR (30) NOT NULL,
Apellido1 VARCHAR (20),
Apellido2 VARCHAR (20) null,
Fechanaci DATE NOT NULL,
CONSTRAINT pk_paciente
PRIMARY KEY (Numpaciente)
);
GO

CREATE TABLE expediente (
NumExp INT NOT NULL,
Fechaapertura DATE NOT NULL, 
Tipodesangre CHAR(3) NOT NULL,
paciente INT NOT NULL,
CONSTRAINT pk_expediente
PRIMARY KEY (NumExp),
CONSTRAINT unique_numpaciente
UNIQUE (paciente),
CONSTRAINT fk_expediente_paciente
FOREIGN KEY (paciente)
REFERENCES paciente (Numpaciente)


);

GO

INSERT INTO paciente
VALUES (1, 'kevin', 'kosner', 'lopez', '2007-02-18');


INSERT INTO paciente
VALUES (2, 'daniel', 'martinez', 'mendoza', '2007-02-18');


INSERT INTO paciente
VALUES (3, 'luis fernando', 'nieto', NULL , '2007-02-18')

INSERT INTO expediente 
VALUES (1, GETDATE(), '+0', 1 );

NSERT INTO expediente 
VALUES (2, GETDATE(), '+b', 2 );

NSERT INTO expediente 
VALUES (2, GETDATE(), '+a', 2 );

SELECT 
e.NumExp,
e.Fechaapertura,
e.Tipodesangre,
CONCAT (p.Nombre, '', p.Apellido,'',
p.Apellido2)
AS [Nombre Completo ]



SELECT GETDATE ()

