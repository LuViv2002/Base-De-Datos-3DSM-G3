# Diccionario de datos - Ejercicios Modelo Entidad Relación

---

## Ejercicio 1 - Sistema de Expedientes Médicos

### 1. Información general
| Elemento | Valor |
|---|---|
| Proyecto | Sistema de Expedientes Médicos |
| Versión | 1.0 |
| Fecha | Julio 2026 |
| Elaboró | Luar Antonio Viveros Mejia|
| SGBD | SQL Server |

### 2. Descripción
Administra la información de Pacientes y sus Expedientes Médicos, permitiendo registrar y consultar los datos de cada persona y su historial clínico.

### 3. Restricciones
| Código | Significado |
|---|---|
| PK | Primary Key (Clave primaria) |
| FK | Foreign Key (Clave foránea) |
| NN | NOT NULL (No nulo) |
| UQ | UNIQUE (Único) |
| AI | Auto Increment (Autonumérico) |
| CK | CHECK (Validación) |
| DF | DEFAULT (Valor por defecto) |

### 4. Diccionario de datos

#### Tabla: Paciente
**Descripción:** Almacena la información básica de los pacientes.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| id_paciente | INT | - | PK, AI, NN | Identificador único del paciente |
| nombre | VARCHAR | 100 | NN | Nombre completo del paciente |
| fecha_nacimiento | DATE | - | NN | Fecha de nacimiento del paciente |

#### Tabla: Expediente
**Descripción:** Almacena la información del expediente médico asociado a cada paciente.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| num_expediente | INT | - | PK, NN | Número único del expediente |
| fecha_apertura | DATE | - | NN | Fecha en que se crea el expediente |
| tipo_sangre | VARCHAR | 5 | NN | Tipo de sangre del paciente |
| id_paciente | INT | - | FK, UQ, NN | Identificador del paciente propietario del expediente |

### 5. Relaciones
| Relación | Cardinalidad | Descripción |
|---|---|---|
| Paciente — Expediente | 1 : 1 | Cada paciente tiene un único expediente médico; cada expediente pertenece a un solo paciente. |

---


## Ejercicio 2 - Profesores y Cursos (Corregido)

### 1. Información general
| Elemento | Valor |
|---|---|
| Proyecto | Administración de Cursos Académicos |
| Versión | 1.1 |
| Fecha | Julio 2026 |
| Elaboró | Luar Antonio Viveros Mejia |
| SGBD | SQL Server |

### 2. Descripción
Sistema que administra profesores, sus especialidades y los cursos que imparten.

### 3. Restricciones
| Código | Significado |
|---|---|
| PK | Primary Key |
| FK | Foreign Key |
| NOT NULL | Valor obligatorio |

### 4. Diccionario de datos

#### Tabla: Profesor
**Descripción:** Almacena los datos personales de los docentes.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| NumProf | INT | - | PK, NOT NULL | Identificador único del profesor |
| Nombre | VARCHAR | 50 | NOT NULL | Nombre del profesor |
| Apellido1 | VARCHAR | 20 | NOT NULL | Primer apellido |
| Apellido2 | VARCHAR | 20 | NOT NULL | Segundo apellido |
| NumEsp | INT | - | FK, NOT NULL | Especialidad que tiene el docente |

#### Tabla: Especialidad
**Descripción:** Almacena las áreas de especialización académica.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| NumEsp | INT | - | PK, NOT NULL | Identificador único de la especialidad |
| NombreEsp | VARCHAR | 30 | NOT NULL | Nombre del área de especialidad |

#### Tabla: Curso
**Descripción:** Almacena la información de cada curso.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| NumCursa | INT | - | PK, NOT NULL | Identificador único del curso |
| NombreCurso | VARCHAR | 20 | NOT NULL | Nombre del curso |
| Creditos | INT | - | NOT NULL | Créditos que otorga el curso |
| NumProf | INT | - | FK, NOT NULL | Profesor que imparte el curso |

### 5. Relaciones
| Relación | Cardinalidad | Descripción |
|---|---|---|
| Profesor — Curso | 1 : N | Un profesor puede impartir varios cursos; cada curso tiene un solo profesor. |
| Especialidad — Profesor | 1 : N | Una especialidad la pueden tener varios profesores; cada profesor tiene una sola especialidad. |

---

## Ejercicio 3 - Control de Inscripciones Escolares

### 1. Información general
| Elemento | Valor |
|---|---|
| Proyecto | Sistema de Control de Inscripciones Escolares |
| Versión | 1.0 |
| Fecha | Julio 2026 |
| Elaboró |Luar Antonio Viveros Mejia |
| SGBD | SQL Server |

### 2. Descripción
Administra los datos de Alumnos, Materias y las inscripciones de los alumnos a las materias que cursan.

### 3. Restricciones
*(Mismas que el ejercicio anterior)*

### 4. Diccionario de datos

#### Tabla: Alumno
**Descripción:** Almacena la información de los estudiantes.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| matricula | VARCHAR | 10 | PK, NN | Matrícula única del alumno |
| nombre | VARCHAR | 100 | NN | Nombre completo del alumno |
| semestre | INT | - | NN | Semestre que cursa actualmente |

#### Tabla: Materia
**Descripción:** Almacena la información de las asignaturas.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| clave_materia | VARCHAR | 10 | PK, NN | Clave única de la materia |
| nombre | VARCHAR | 100 | NN | Nombre de la asignatura |
| creditos | INT | - | NN | Créditos correspondientes a la materia |

#### Tabla: Inscribe
**Descripción:** Tabla intermedia que registra la inscripción de alumnos a materias.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| matricula | VARCHAR | 10 | PK, FK, NN | Matrícula del alumno inscrito |
| clave_materia | VARCHAR | 10 | PK, FK, NN | Clave de la materia inscrita |
| fecha_inscripcion | DATE | - | NN | Fecha en que se realizó la inscripción |
| calificacion_final | DECIMAL | 4,2 | - | Calificación obtenida al finalizar el curso |

### 5. Relaciones
| Relación | Cardinalidad | Descripción |
|---|---|---|
| Alumno — Materia | N : M | Un alumno puede inscribirse en muchas materias; una materia puede tener inscritos muchos alumnos. |

---

## Ejercicio 4 - Sistema de Gestión de Ventas y Pedidos

### 1. Información general
| Elemento | Valor |
|---|---|
| Proyecto | Sistema de Gestión de Ventas y Pedidos |
| Versión | 1.0 |
| Fecha | Julio 2026 |
| Elaboró |Luar Antonio Viveros Mejia|
| SGBD | SQL Server |

### 2. Descripción
Administra clientes, pedidos, productos y el detalle de los artículos incluidos en cada pedido.

### 3. Restricciones
*(Mismas que el ejercicio anterior)*

### 4. Diccionario de datos

#### Tabla: Cliente
**Descripción:** Almacena los datos de los clientes.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| id_cliente | INT | - | PK, AI, NN | Identificador único del cliente |
| nombre | VARCHAR | 150 | NN | Nombre completo o razón social del cliente |

#### Tabla: Pedido
**Descripción:** Almacena la información general de cada pedido.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| num_pedido | INT | - | PK, AI, NN | Número único del pedido |
| fecha_pedido | DATE | - | NN | Fecha en que se registra el pedido |
| id_cliente | INT | - | FK, NN | Identificador del cliente que realiza el pedido |

#### Tabla: Producto
**Descripción:** Almacena el catálogo de productos disponibles.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| id_producto | INT | - | PK, AI, NN | Identificador único del producto |
| nombre | VARCHAR | 100 | NN | Nombre o descripción del producto |
| precio | DECIMAL | 10,2 | NN | Precio unitario del producto |

#### Tabla: Detalle_Pedido
**Descripción:** Tabla intermedia con los artículos incluidos en cada pedido.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| num_pedido | INT | - | PK, FK, NN | Número del pedido correspondiente |
| id_producto | INT | - | PK, FK, NN | Identificador del producto agregado |
| cantidad | INT | - | NN | Cantidad de unidades solicitadas |
| precio_venta | DECIMAL | 10,2 | NN | Precio unitario al momento de la venta |

### 5. Relaciones
| Relación | Cardinalidad | Descripción |
|---|---|---|
| Cliente — Pedido | 1 : N | Un cliente puede realizar varios pedidos; cada pedido pertenece a un solo cliente. |
| Pedido — Producto | N : M | Un pedido puede contener varios productos; un producto puede aparecer en varios pedidos. |

---

## Ejercicio 5 - Gestión de Recursos Humanos y Proyectos

### 1. Información general
| Elemento | Valor |
|---|---|
| Proyecto | Sistema de Recursos Humanos y Proyectos |
| Versión | 1.0 |
| Fecha | Julio 2026 |
| Elaboró | Luar Antonio Viveros Mejia|
| SGBD | SQL Server |

### 2. Descripción
Administra departamentos, empleados, proyectos, dependientes de los empleados y la asignación de personal a proyectos.

### 3. Restricciones
*(Mismas que el ejercicio anterior)*

### 4. Diccionario de datos

#### Tabla: Departamento
**Descripción:** Almacena los datos de las áreas de la empresa.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| numero_departamento | INT | - | PK, AI, NN | Identificador único del departamento |
| nombre | VARCHAR | 50 | NN | Nombre del departamento |
| gerente_ssn | VARCHAR | 15 | FK, NN | NSS del empleado designado como gerente |
| fecha_inicio | DATE | - | NN | Fecha en que inicia funciones el gerente |

#### Tabla: Empleado
**Descripción:** Almacena la información del personal de la empresa.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| SSN | VARCHAR | 15 | PK, NN | Número de Seguro Social único |
| nombre | VARCHAR | 80 | NN | Nombre(s) del empleado |
| apellido | VARCHAR | 80 | NN | Apellidos del empleado |
| fecha_nacimiento | DATE | - | NN | Fecha de nacimiento |
| sexo | VARCHAR | 10 | NN | Sexo del empleado |
| salario | DECIMAL | 10,2 | NN | Sueldo mensual |
| num_departamento | INT | - | FK, NN | Departamento al que está asignado |
| supervisor_ssn | VARCHAR | 15 | FK | NSS del empleado que es su supervisor |

#### Tabla: Proyecto
**Descripción:** Almacena los proyectos desarrollados por la empresa.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| num_proyecto | INT | - | PK, AI, NN | Identificador único del proyecto |
| nombre | VARCHAR | 100 | NN | Nombre del proyecto |
| ubicacion | VARCHAR | 100 | NN | Lugar donde se desarrolla el proyecto |
| numero_departamento | INT | - | FK, NN | Departamento responsable del proyecto |

#### Tabla: Ubicacion_Departamento
**Descripción:** Almacena las distintas sedes de cada departamento.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| numero_departamento | INT | - | PK, FK, NN | Departamento al que corresponde la ubicación |
| ubicacion | VARCHAR | 100 | PK, NN | Lugar físico de la sede |

#### Tabla: Dependiente
**Descripción:** Almacena los datos de personas dependientes de cada empleado.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| empleado_ssn | VARCHAR | 15 | PK, FK, NN | NSS del empleado al que está asociado |
| nombre | VARCHAR | 100 | PK, NN | Nombre completo del dependiente |
| sexo | VARCHAR | 10 | NN | Sexo del dependiente |
| fecha_nacimiento | DATE | - | NN | Fecha de nacimiento |
| parentesco | VARCHAR | 50 | NN | Tipo de parentesco con el empleado |

#### Tabla: Trabaja_En
**Descripción:** Tabla intermedia para asignar empleados a proyectos.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| ssn_empleado | VARCHAR | 15 | PK, FK, NN | NSS del empleado asignado |
| num_proyecto | INT | - | PK, FK, NN | Proyecto al que se asigna |
| horas | INT | - | NN | Horas semanales dedicadas al proyecto |

### 5. Relaciones
| Relación | Cardinalidad | Descripción |
|---|---|---|
| Departamento — Empleado | 1 : N | Un departamento tiene varios empleados; cada empleado pertenece a un solo departamento. |
| Departamento — Proyecto | 1 : N | Un departamento controla varios proyectos; cada proyecto pertenece a un solo departamento. |
| Departamento — Ubicacion_Departamento | 1 : N | Un departamento puede tener varias sedes; cada sede pertenece a un solo departamento. |
| Empleado — Proyecto | N : M | Un empleado puede participar en varios proyectos; un proyecto cuenta con varios empleados. |
| Empleado — Dependiente | 1 : N | Un empleado puede tener varios dependientes; cada dependiente pertenece a un solo empleado. |
| Empleado — Empleado | 1 : N | Un empleado puede ser supervisor de varios subordinados; cada empleado tiene un solo supervisor. |

---

## Ejercicio 6 - Sistema Académico e Institucional

### 1. Información general
| Elemento | Valor |
|---|---|
| Proyecto | Sistema de Gestión Académica e Institucional |
| Versión | 1.0 |
| Fecha | Julio 2026 |
| Elaboró |Luar Antonio Viveros Mejia |
| SGBD | SQL Server |

### 2. Descripción
El sistema administra la información de alumnos, credenciales, materias, profesores, proyectos, departamentos y dependientes, así como sus relaciones de inscripción, participación y adscripción.

### 3. Restricciones
| Código | Significado |
|---|---|
| PK | Primary Key (Clave primaria) |
| FK | Foreign Key (Clave foránea) |
| NN / NOT NULL | Valor obligatorio |
| UQ | UNIQUE (Valor único) |

---

### 4. Diccionario de datos

#### Tabla: Alumno
**Descripción:** Almacena los datos personales y académicos de los estudiantes.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| Matricula | VARCHAR | 15 | PK, NOT NULL | Identificador único del alumno |
| Nombre | VARCHAR | 50 | NOT NULL | Nombre(s) del alumno |
| Apellido1 | VARCHAR | 30 | NOT NULL | Primer apellido |
| Apellido2 | VARCHAR | 30 | NOT NULL | Segundo apellido |
| FechaNac | DATE | - | NOT NULL | Fecha de nacimiento |
| FechaIng | DATE | - | NOT NULL | Fecha de ingreso a la institución |
| Carrera | VARCHAR | 80 | NOT NULL | Carrera que cursa |
| Semestre | INT | - | NOT NULL | Semestre actual |
| Telefono | VARCHAR | 15 | NOT NULL | Número de contacto |

#### Tabla: Credencial
**Descripción:** Almacena los datos de identificación oficial del alumno.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| FolioCredencial | VARCHAR | 20 | PK, NOT NULL | Folio único de la credencial |
| FechaExpedicion | DATE | - | NOT NULL | Fecha de emisión |
| Vigencia | DATE | - | NOT NULL | Fecha de vencimiento |
| Matricula | VARCHAR | 15 | FK, UQ, NOT NULL | Alumno al que pertenece la credencial |

#### Tabla: Materia
**Descripción:** Almacena la información de las asignaturas disponibles.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| ClaveMateria | VARCHAR | 10 | PK, NOT NULL | Clave única de la materia |
| NombreMateria | VARCHAR | 80 | NOT NULL | Nombre completo de la asignatura |
| Creditos | INT | - | NOT NULL | Créditos que otorga |
| Horas | INT | - | NOT NULL | Horas semanales de clase |

#### Tabla: Cursa
**Descripción:** Tabla intermedia que registra las materias que cursa cada alumno.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| Matricula | VARCHAR | 15 | PK, FK, NOT NULL | Alumno inscrito |
| ClaveMateria | VARCHAR | 10 | PK, FK, NOT NULL | Materia cursada |
| Calificacion | DECIMAL | 4,2 | - | Calificación obtenida |

#### Tabla: Profesor
**Descripción:** Almacena los datos del personal docente.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| NumEmpleado | VARCHAR | 15 | PK, NOT NULL | Número de empleado único |
| Nombre | VARCHAR | 50 | NOT NULL | Nombre(s) del profesor |
| Apellido1 | VARCHAR | 30 | NOT NULL | Primer apellido |
| Apellido2 | VARCHAR | 30 | NOT NULL | Segundo apellido |
| Correo | VARCHAR | 100 | UQ, NOT NULL | Correo institucional |

#### Tabla: Proyecto
**Descripción:** Almacena los proyectos desarrollados en la institución.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| IdProyecto | INT | - | PK, NOT NULL | Identificador único del proyecto |
| Nombre | VARCHAR | 100 | NOT NULL | Nombre del proyecto |
| FechaInicio | DATE | - | NOT NULL | Fecha de inicio |
| FechaFin | DATE | - | NOT NULL | Fecha estimada de finalización |

#### Tabla: Participa
**Descripción:** Tabla intermedia que asigna profesores a proyectos.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| NumEmpleado | VARCHAR | 15 | PK, FK, NOT NULL | Profesor participante |
| IdProyecto | INT | - | PK, FK, NOT NULL | Proyecto asignado |
| Rol | VARCHAR | 50 | NOT NULL | Función que cumple en el proyecto |

#### Tabla: Departamento
**Descripción:** Almacena las áreas administrativas y académicas.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| IdDepartamento | INT | - | PK, NOT NULL | Identificador único del departamento |
| Nombre | VARCHAR | 80 | NOT NULL | Nombre del área |
| Edificio | VARCHAR | 50 | NOT NULL | Ubicación física |

#### Tabla: Pertenece
**Descripción:** Relaciona cada profesor con su departamento.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| NumEmpleado | VARCHAR | 15 | PK, FK, NOT NULL | Profesor adscrito |
| IdDepartamento | INT | - | FK, NOT NULL | Departamento al que pertenece |

#### Tabla: Dependiente
**Descripción:** Almacena los datos de personas dependientes de los profesores.
| Campo | Tipo | Longitud | Restricciones | Descripción |
|---|---|---|---|---|
| IdDependiente | INT | - | PK, NOT NULL | Identificador único del dependiente |
| Nombre | VARCHAR | 100 | NOT NULL | Nombre completo |
| Parentesco | VARCHAR | 50 | NOT NULL | Tipo de relación con el profesor |
| FechaNacimiento | DATE | - | NOT NULL | Fecha de nacimiento |
| NumEmpleado | VARCHAR | 15 | FK, NOT NULL | Profesor responsable |

---

### 5. Relaciones
| Relación | Cardinalidad | Descripción |
|---|---|---|
| Alumno — Credencial | 1 : 1 | Cada alumno tiene una sola credencial; cada credencial pertenece a un solo alumno. |
| Alumno — Materia | N : M | Un alumno cursa varias materias; una materia es cursada por varios alumnos. |
| Profesor — Proyecto | N : M | Un profesor participa en varios proyectos; un proyecto cuenta con varios profesores. |
| Profesor — Departamento | N : 1 | Varios profesores pertenecen a un departamento; cada profesor está adscrito a un solo departamento. |
| Profesor — Dependiente | 1 : N | Un profesor puede tener varios dependientes; cada dependiente pertenece a un solo profesor. |