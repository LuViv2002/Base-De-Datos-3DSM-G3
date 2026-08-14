/*===================================================================
SQL - DLQ en SQLServer

Archivo: 04-practices
.SQL

Descripción: Realiza los ejemplos del comando SELECT

===================================================================*/

-- Verificar la existencia de data en las tablas
SELECT COUNT(*) FROM [dbo].[ventas];

SELECT COUNT(*) FROM [dbo].[proveedores];

SELECT COUNT(*) FROM [dbo].[productos];

SELECT COUNT(*) FROM [dbo].[estados];

SELECT COUNT(*) FROM [dbo].[empleados];

SELECT COUNT(*) FROM [dbo].[detalle_ventas];

SELECT COUNT(*) FROM [dbo].[departamentos];

SELECT COUNT(*) FROM [dbo].[clientes];

SELECT COUNT(*) FROM [dbo].[ciudades];

SELECT COUNT(*) FROM [dbo].[categorias]; 

-- 

/*===================================================================
Instrucción SELECT es la isntrucción es mas utilizada en SQL.
Su objetivo es consultar informacion de una o varias tablas

Sintaxis

SELECT
    columna_1,
    columna_2,
    columna_3,
    columna_n
FROM nombre_tabla;
===================================================================*/

--Mostrar todos los estados 

SELECT * 
FROM estados; -- No es recomendable cuando hay muchos datos

SELECT 
    nombre
FROM estados;

-- Mostrar los nombres de los departamentos
SELECT 
    nombre
FROM departamentos;
GO
-- Mostrar el nombre del proveedor, el telefono y su contacto 

SELECT 
    empresa, 
    telefono, 
    contacto
FROM proveedores;
GO

-- Alias de columnas 

-- Mostar los nombres de los estados  

    -- Forma 1
SELECT 
    nombre 'Nombre del Estado'
FROM estados;

    -- Forma 2
SELECT 
    nombre AS 'Nombre del Estado'
FROM estados;

    -- Forma 3
SELECT 
    nombre NombredelEstado
FROM estados;

    -- Forma 4
SELECT 
    nombre AS Nombre_del_Estado
FROM estados;

    -- Forma 5
SELECT 
    nombre [Nombre del Estado]
FROM estados;

    -- Forma 6
SELECT 
    nombre AS [Nombre del Estado]
FROM estados;

SELECT COUNT(*) AS [Total de Ventas Detalle]
FROM [dbo].[detalle_ventas];

-- Mostrar el codigo, nombre y precio pero con nombres mas adecuados para el usuario

SELECT 
    codigo AS [Codigo_Producto],
    UPPER nombre AS [Producto],
    Precio AS [Precio_Unitario]
FROM productos;
GO

-- TODO: VER CAMPOS CALCULADOS 
--Orden Logico de una consulta SELECT

--Orden de como escribimos la consulta

--SELECT
--FROM
--WHERE
--GROUP BY 
--HAVING
--ORDEN BY

-- ORDEN DE EJECUCIÓN DE SQL SERVER

--FROM
--WHERE
--GROUP BY
--HAVING
--SELECT
--DISTING
--ORDER BY