/*===================================================================

SQL - DLQ en SQLServer

Archivo: 01-create-database.SQL

Descripción: Crea la base de datos para el leguaje SQL

===================================================================*/


USE master;
GO

IF DB_ID ('Comercial_db') IS NOT NULL 
BEGIN
	ALTER DATABASE comercial_db
		SET SINGLE_USER
		WITH ROLLBACK IMMEDIATE;

		DROP DATABASE comercial_db;

END;
GO

CREATE DATABASE comercial_db;
GO

USE comercial_db;
GO

PRINT 'La base de datos comercila_db se creo correctamente';
GO

-- SELECT DB_ID ('comercial_db');