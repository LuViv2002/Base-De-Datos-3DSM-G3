# #Construccion de Base de Datos con lenguaje SQL
Se comenzo 
El lenguaje SQL (Structure query lenguaje), se  divide en cinco grandes categorias:

1.Con DDL (Data Definicion Languaje)
2.DML (Data Manipulacion Languaje)
3.DQL (Data Query Languaje)
4.DCL (Data Control Languaje -Controla Permisos)-GRANT, REVOKE
TCL (Transaction Control Languaje)- Begin Transaction, COMMIT


## SQL-DDL
**Lenguaje de Definicion de Datos**

Se utiliza para **crar y modificar la estructura** de una base de datos

Con DDL trabajamos sobre los objetos de la base de datos:

-_Base de datos_
-_Tablas_
-_Restricciones_
-Vistas
-Esquemas
-Store Procedures
-Funciones
-Triggers
 
 **Comandos Principales**

| Comando | Función |
| :--- | :--- |
| CREATE | Crea objetos de la base de datos |
| ALTER | Modifica objetos de la base de datos |
| DROP | Elimina objetos de la base de datos |
| TRUNCATE | Vacia una tabla |
| RENAME | Renombra Objetos (Según el SGBD) |

## SQL-DML

*Lenguaje de Manipulacion de Datos*

Sireve para *trabajar con la informacion almacenada*

Con este lenguaje no se cambia la estructur, si no los registros

*Comando Principales*

| Comando | Funcion |
| :--- | :--- |
| INSERT | Inserta Registros |
| UPDATE | Actualiza Registros |
| DELETE | Elimina Registros |




Generalmente se combina con:

- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOIN (LEFT, RIGHT, INNER, FULL, CROSS)
- DISTINCT
- TOP/LIMIT
- Funciones de Agregado (SUM, AVG, MIN, MAX, COUNT)
- Window Functions (Funciones de Ventana)

## Nomenclatura para la construccion de la Base de Datos (Snake)
La nomenclatura o convencion que mas se recomienda hoy si se busca una nomenclatura moderna, portable y aliniada con buenas practicas en distintos motores de base de datos 

La razón es que funciona de forma consistente en **SQL SERVER, MYSQL o MARIADB** y especialmente en *POSTGRESQL, donde los identificadores sin comillas se convierten automáticamente a minúsculas. Con **snake_case* evitas problemas de mayúsculas y haces que las consultas sean más legibles.

| Objeto        | Convención                 | Ejemplo                              |
| :------------ | :------------------------- | :----------------------------------- |
| Base de Datos | snake_case                 | control_escolar                      |
| Esquema       | snake_case                 | ventas, rh, seguridad                |
| Tabla         | Singular en snake_case     | cliente, pedido, detalle_pedido      |
| Columna       | snake_case                 | cliente_id, fecha_registro, correo_electronico |
| PK            | <tabla>_id                 | cliente_id, producto_id              |
| FK            | Igual que la PK referenciada | cliente_id, categoria_id           |
| Tabla Puente  | <tabla1>_<tabla2>          | alumno_curso, producto_proveedor     |

## Nombrar las Restricciones 
- pk_cliente
- fk_pedido_cliente
- uq_cliente_correo_electronico
- ck_producto_precio
- df_cliente_activo
- ix_pedido_fecha

**Prefijos**
- pk (Primary Key)
- fk (Foreign Key)
- uq (Unique)
- ck (Check)
- df (default)
- ix (index)