# Diccionario de datos de la base de datos Control Escolar

1.- Información general

| Elemento | Valor |
| :--- | :--- |
| Proyecto | Sistema de conrol escolar |
| Versión | 1.0 |
| Fecha | Junio 2026 |
| Elaboró | Ing. José Luis Herrera Gallardo, MTI |
| SGBD | SQLSERVER |

2.- Descripción del sistema de base de datos

El sistema administra:

- Carrera
- Alumnos
- Profesores
- Materias
- Grupos
- Inscripciones

Permite controlar la oferta educativa y la inscripción de los estudiantes 

3.- Catalogo de restricciones utilizadas

| Código | Significado |
| :--- | :--- |
| PK | Primary Key |
| FK | Foreign Key |
| NN | NOT NULL | 
| UQ |  UNIQUE |
| AI | Auto Incrrement |
| ck | Check |
| DF | DEFAULT |


4.- Diccionario de datos

**Tabla:** Carrera

**Descripción:** _Almacena las carreras ofertadas por la universidad_

| Campo | Tipo | Longitud | Restricciones | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| id_carrera | INT | - | PK, AI, NN | Identificador unico de la carrera |
| nombre |  VARCHAR |  100 |  UQ, NN | Nombre de la carrera |
| duracion_cuatrimestre |  INT |  - |  NN, CK(>0) | Duración del cuatrimestre |

---

**Tabla:** Alumno

**Descripción:** _Almacena la inromación de los estudiantes_

| Campo | Tipo | Longitud | Restricciones | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| id_alumno | INT | - | PK, AI, NN | Identificador unico del alumno |
| matricula | VARCHAR | 10 | UQ, NN | Matricula institucional |
| nombre |  VARCHAR |  50 |  NN | Nombre del estudiante |
| apellido_paterno |  VARCHAR |  50 |  NULL | Apellido paterno |
| apellido_materno |  VARCHAR |  50 |  NULL | Apellido materno |
| correo |  VARCHAR |  100 | UQ, NN | Correo institucional |
| fecha_nacimiento |  DATE |  - |  NN | Fecha de nacimiento |
| id_carrera |  INT |  - |  FK, NN | Carrera a la que pertenece |

5.- Relaciones

| Relación | Cardinalidad | Descripción |
|:----------|:---------:|----------:|
| Carrera -> Alumno   | 1:N    | Una carrera  tiene muchos alumnos |
| Carrera -> Materia    | 1:N   | Una carrera tiene muchass materias |
| Profesor -> Grupo   | 1:N   | Un profesor puede impartir a varios grupos |
| Materia -> Grupo   | 1:N   | Una materia puede abrise a varios grupos |
| Alumno -> Descripcion   | 1:N   | Un alumno puede tener varias inscripciones |
| Grupo -> Inscripción   | 1:N   | Un grupo puede tener muchos alumnos |

6.- Matriz de claves foraneas

| Tabla | Campo FK | Referencia |
|:----------|:---------:|----------:|
| Alumno   | id_carrera | Carrera (id_carrera) |
| Materia   | id_carrera | Carrera (id_carrera) |
| Grupo   | id_profesor | Profesor (id_profesor) |
| Grupo   | id_materia | Materia (id_materia) |
| Inscripcion   | id_alumno | Alumno (id_alumno) |
| Inscripcion   | id_grupo | Grupo (id_grupo) |


7.- Integridad Referencial

| Regla | Descripción |
| :--- | :--- |
| IR-01 | No se puede registrar un alumno con una carrera existente |
| IR-02 | No  se puede crear un grupo para una materia inexistente |
| IR-03 | No se puede crear un grupo para un profesor inexistente | 


8.- Reglas del negocio 
   
| Código | Regla |
| :--- | :--- |
| RN-01 | Un alumno pertenece a una sola carrera |
| RN-02 | Una carrera puede terner muchos alumnos |
| RN-03 | Una carrera puede tener muchas materias | 
| UQ |  UNIQUE |
| AI | Auto Incrrement |
| ck | Check |
| DF | DEFAULT |




9.- Diagrama relacional
![Diagrama ](/img/ER/Diagrama4.drawio.png)
