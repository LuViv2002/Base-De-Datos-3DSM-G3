create database bd_lexnova_v1;
go

use bd_lexnova_v1;
go

/*================CREAR TABLA CLIENTE=========================*/

create table cliente(
    cliente_id int not null identity(1,1)
    constraint pk_cliente
    primary key,
    nombre nvarchar(120) not null,
    correo varchar(120) not null
    constraint uq_cliente_correo
    unique,
    telefono varchar(20) null,
    fecha_registro datetime2 not null
    constraint df_cliente_fecha_registro
    default sysdatetime(),
    activo bit not null
    constraint df_cliente_activo
    default 1
);
go

/*================CREAR TABLA ABOGADO=========================*/

create table abogado(
    abogado_id int not null identity(1,1)
    constraint pk_abogado
    primary key,
    clave_empleado char(8) not null
    constraint uq_abogado_clave_empleado
    unique,
    nombre nvarchar(120) not null,
    cedula_profesional varchar(20) not null
    constraint uq_abogado_cedula_profesional
    unique,
    correo varchar(120) not null,
    especialidad nvarchar(80) null,
    activo bit not null
    constraint df_abogado_activo
    default 1
);
go

/*================CREAR TABLA EXPEDIENTE=========================*/

create table expediente(
    expediente_id int not null identity(1,1)
    constraint pk_expediente
    primary key,
    folio varchar(20) not null
    constraint uq_expediente_folio
    unique,
    cliente_id int not null
    constraint fk_expediente_cliente
    foreign key (cliente_id)
    references cliente (cliente_id),
    abogado_responsable_id int not null
    constraint fk_expediente_abogado
    foreign key (abogado_responsable_id)
    references abogado (abogado_id),
    tipo_asunto nvarchar(60) not null,
    fecha_apertura date not null,
    fecha_cierre date null,
    estado varchar(15) not null
    constraint df_expediente_estado
    default 'Abierto'
    constraint ck_expediente_estado
    check (estado in ('Abierto', 'EnProceso', 'Cerrado', 'Suspendido')),
    monto_honorarios decimal(10,2) not null
    constraint ck_expediente_monto_honorarios
    check (monto_honorarios > 0.0),
    constraint ck_expediente_fechas
    check (fecha_cierre is null or fecha_cierre >= fecha_apertura)
);
go

/*================CREAR TABLA ACTUACION=========================*/

create table actuacion(
    actuacion_id int not null identity(1,1)
    constraint pk_actuacion
    primary key,
    expediente_id int not null
    constraint fk_actuacion_expediente
    foreign key (expediente_id)
    references expediente (expediente_id)
    on delete cascade,
    fecha_actuacion datetime2 not null,
    tipo varchar(20) not null,
    descripcion nvarchar(300) not null,
    costo_adicional decimal(10,2) not null
    constraint ck_actuacion_costo_adicional
    check (costo_adicional >= 0.0)
);
go

/*================CREAR TABLA SEGUIMIENTO=========================*/

create table seguimiento(
    seguimiento_id int not null identity(1,1)
    constraint pk_seguimiento
    primary key,
    actuacion_id int not null
    constraint fk_seguimiento_actuacion
    foreign key (actuacion_id)
    references actuacion (actuacion_id)
    on delete cascade,
    abogado_id int null
    constraint fk_seguimiento_abogado
    foreign key (abogado_id)
    references abogado (abogado_id)
    on delete set null,
    fecha_seguimiento datetime2 not null,
    resultado nvarchar(250) not null,
    confirmado bit not null
    constraint df_seguimiento_confirmado
    default 0,
    nota_temporal nvarchar(100) null
);
go

/*================CAMBIOS CON ALTER TABLE=========================*/

-- 1. Agregar a Expediente la columna prioridad obligatoria con valor predeterminado 'Media'
alter table expediente
add prioridad varchar(10) not null
constraint df_expediente_prioridad
default 'Media';
go

-- 2. Ampliar la columna telefono de Cliente a varchar(25) permitiendo nulos
alter table cliente
alter column telefono varchar(25) null;
go

/*================OPERACION CON DROP=========================*/

-- Eliminar columna nota_temporal de seguimiento
alter table seguimiento
drop column nota_temporal;
go


