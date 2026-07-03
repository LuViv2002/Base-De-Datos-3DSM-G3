## Ejercicios del modelo Entidad-Relacion

## Ejercicio 1:

Un hospital registra informacion de sus pacientes

>De cada paciente se almacena lo siguiente:

- Valor que lo identifica 
- Nombre
- Fecha de nacimiento

>De cada expediente médico:
 
- Numero de expediente
- Fecha de apertura
- Tipo de sangre 


>Reglas del negocio

1.- Cada paciente debe tener exactamente 1 expediente médico

2.- Cada expediente médico pertenece a un único paciente

3.- No puede existir un expediente sin paciente 

4.- No puede existir un paciente sin expediente médico

![Diagrama ](/img/ER/Ejercicio1.png)


## Ejercicio 2:

Una universidad administra profesores y cursos

>De cada profesor se almacena:

- Numero de Profesor
- nombre
- especialidad

>De cada curso se almacena 

- numero de curso
- nombre del curso
- créditos

>Reglas del negocio:

1.- Un profesor puede impartir varios cursos

2.- Un curso solamente puede ser impartido 
por un profesor

3.- Puede existir un profesor que actualmente no imparta cursos

4.- Todo curso debe estar asignado a un profesor 

>Lo que se debe realizar:

- Identificar y Dibujar las Entidades
- Identificar y Dibujar la relación 
**IMPARTE**
- Determinar la razòn de cardinalidad
- Determinar la participación 


## Diagrama del ejercicio 2

![Diagrama ](/img/ER/Ejercicio2.png)

### Solucion del Ejercicio 


## Ejercicio 3:

Una escuela administra alumnos y materias 

>De cada alumno se almacena:
- Matricula
- Nombre
- Semestre  

>De cada materia se almacena:
- Clave de la materia
- Nommbre de la materia
- Créditos

>Reglas del negocio:
1.- Un alumno puede inscribirse en varias materias

2.- Una materia puede tener muchos alumnos inscritos

3.- Puede existir una materia sin alumnos inscritos 

4.- Todo alumno debe estar inscrito en al menoos una materia

5.- De cada inscripción se desea almacenar:


    -Fecha de inscripción
    -Calificación final

Nota: La relación se debe llamar **INSCRIBE**

## Diagrama del Ejercicio 3
![Diagrama ](/img/ER/Diagrama3.png)


## Ejercicio 4

Una empresa de dedica a la venta de productos al por mayor, y necesita registrar lo siguiente:


>Identificar del cliente:
- Nombre del cliente, el cual es una persona moral

>De los pedidos de ventas:

- Numero de pedido
- Fecha del pedido 

>De los productos:

- Numero del producto
- Nombre del producto
- Precio del producto

>Reglas del negocio 

1.- Un cliente puede realizar muchos pedidos
2.- Cada pedido pertenece a un cliente
3.- Un pedido contiene varios  productos
4.- Un producto puede aparecer en muchos pedidos 
5.- Un pedido debe contener al menos un producto 
6.- Un producto puede no haber sido vendido
7.- El detalle del pedido no existe sin pedido
8.- El detalle del pedido no existe sin producto
9.- El detalle del pedido alamacena cantidad vendida y precio de venta


## Diagrama del Ejercicio 4
![Diagrama ](/img/ER/Diagrama4.png)



## Ejercicio 5 

Una empresa desea administrar la información de sus departamentos, empleados, proyectos y dependientes.

> De cada departamento se almacena:

* Número de departamento
* Nombre del departamento
* Fecha de inicio del gerente

> De cada empleado se almacena:

* Número de Seguro Social (NSS)
* Nombre
* Dirección
* Salario
* Sexo
* Fecha de nacimiento

> De cada proyecto se almacena:

* Número de proyecto
* Nombre del proyecto
* Ubicación

> De cada dependiente se almacena:

* Nombre
* Sexo
* Fecha de nacimiento
* Parentesco con el empleado

## Reglas del negocio

1.- Cada departamento tiene un único gerente.

2.- Un empleado puede administrar como máximo un departamento.

3.- Cada departamento puede tener una o varias ubicaciones.

4.- Un departamento controla varios proyectos.

5.- Cada proyecto pertenece únicamente a un departamento.

6.- Cada empleado pertenece a un solo departamento.

7.- Un departamento puede tener varios empleados.

8.- Un empleado puede trabajar en varios proyectos.

9.- Un proyecto puede tener asignados varios empleados.

10.- De la relación **TRABAJA_EN** se almacena el número de horas que el empleado trabaja por semana en cada proyecto.

11.- Cada empleado tiene un supervisor directo, quien también es un empleado.

12.- Un supervisor puede supervisar a varios empleados.

13.- Un empleado puede tener varios dependientes.

14.- Cada dependiente pertenece únicamente a un empleado.

15.- Los dependientes no pueden existir sin un empleado.

---


## Diagrama del Ejercicio 5
![Diagrama ](/img/ER/Diagrama5.png)

## Ejercicio 6
## Diagrama del Ejercicio 6
![Diagrama ](/img/ER/Diagrama6.png)