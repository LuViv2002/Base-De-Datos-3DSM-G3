-- Construccion de base de datos con SQL-LDD (Create,Alter,Drop)

-- Crear base de datos

CREATE DATABASE universidad;

GO

-- Usar la base de datos

USE  universidad;

GO

-- Crear tabla 

CREATE TABLE alumno (
	 alumno_id INT,
	 nombre VARCHAR (50),
	 apellido_paterno VARCHAR (25),
	 apellido_materno VARCHAR (50),
	 fecha_nacimiento DATE,
	 correo VARCHAR (50)

);
GO

INSERT INTO alumno
VALUES (1, 'Arcadia', 'Vaca', 'Del Corral', '1986-04-07', 'correo@jjj')

INSERT INTO alumno
VALUES (1, 'Kevin', 'Cabeza', 'Del borrego', '1986-12-08', 'correo@aaaa')


SELECT *
FROM alumno ;

-- Restricciones 
/*
Las restricciones son reglas que garantizan la integriad de los datos

las mas utilizadas son :
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
-DEFAULT

*/
DROP TABLE alumno (
	alumno_id int not null,
	nombre varchar (50),
	correo varchar (50),
	constrain pk_alumno
	primary key ()
)

-- NOT NULL

CREATE TABLE profesor (
	profesor_id INT NOT nULL,
	numero_nomina VARCHAR (20) NOT NULL,
	nombre VARCHAR (15) NOT NULL,
	apellido_paterno VARCHAR (20),
	apellido_materno VARCHAR (20) null,
	fecha_ingreso DATE, 
	CONSTRAINT pk_profesor
	PRIMARY KEY (profesor_id)

)

go

INSERT INTO profesor 
VALUES ('6465156453',' luis ','parramo',null,'2027-05,07');

SELECT *
FROM profesor ;

INSERT INTO profesor  (numero_nomina, nombre, apellido_materno )
VALUES ('615649', 'ricarda', 'sonrics')
