CREATE DATABASE comercializadora;


--Utilizar la base de datos

-- tabla Producto
CREATE TABLE producto(
	producto_id CHAR(5) NOT NULL,
	fabricante_id CHAR(3) NOT NULL,
	descripcion VARCHAR(40) NOT NULL,
	precio DECIMAL (10,2) NOT NULL,
	existencia INT NOT NULL,
	CONSTRAINT pk_producto
	PRIMARY KEY (producto_id, fabricante_id),
	CONSTRAINT uq_producto_descripcion
	UNIQUE (descripcion),
	CONSTRAINT ck_producto_precio
	CHECK (precio>0.0),
	CONSTRAINT ck_producto_existencia
	CHECK (existencia BETWEEN 1 AND 100)
);
GO


/*=======================CREAAR TABLA RESPRESENTATE ========================*/

CREATE TABLE representate (
representate_id INT NOT NULL IDENTITY (1,1)
CONSTRAINT pK_representate
PRIMARY KEY,
nombre VARCHAR (20) NOT NULL,
apellido_paterno VARCHAR (15) NOT NULL,
apellido_materno VARCHAR (15) NULL,
fecha_contrato DATE NOT NULL,
fecha_nacimiento DATE NOT NULL,
puesto VARCHAR (15) NOT NULL,
cuota DECIMAL (10,2) NOT NULL,
CONSTRAINT ck_representate_cuota
CHECK (cuota >0.0),
venta DECIMAL (10,2)
CONSTRAINT ck_representate_venta
CHECK (venta>0.0),
representate_id_jefe INT -- foreign key recursiva o jerarquica
CONSTRAINT fk_representate_representate
FOREIGN KEY (representate_id_jefe)
REFERENCES representate (representate_id),

CONSTRAINT fk_representate_oficina
FOREIGN KEY (representate_id_jefe)
REFERENCES representate (representate_id),
oficina_id INT NOT NULL, -- foreign key de oficina
created_at DATETIME2 NOT NULL
CONSTRAINT df_representate_created_at
DEFAULT SYSDATETIME (),
updated_at DATETIME2 NOT NULL,
CONSTRAINT df_represenate_updated_at
DEFAULT SYSDATETIME

);
GO

/*=======================CREAAR TABLA RESPRESENTATE ========================*/

CREATE TABLE oficina (

    oficina_id INT NOT NULL,

    ciudad VARCHAR(30) NOT NULL,
    region VARCHAR(20) NOT NULL,
    objetivo DECIMAL(10,2) NOT NULL,
    ventas DECIMAL(10,2) NOT NULL,

    created_at DATETIME2 NOT NULL
        CONSTRAINT DF_oficina_created_at
        DEFAULT SYSDATETIME(),

    updated_at DATETIME2 NOT NULL
        CONSTRAINT DF_oficina_updated_at
        DEFAULT SYSDATETIME(),

    representate_id INT NOT NULL,

    CONSTRAINT PK_oficina
        PRIMARY KEY (oficina_id),

    CONSTRAINT UQ_oficina_ciudad
        UNIQUE (ciudad),

    CONSTRAINT CK_oficina_region
        CHECK (region IN ('ESTE','OESTE')),

    CONSTRAINT CK_oficina_objetivo
        CHECK (objetivo > 0.0),

    CONSTRAINT CK_oficina_ventas
        CHECK (ventas > 0.0),

    CONSTRAINT FK_oficina_representate
        FOREIGN KEY (representate_id)
        REFERENCES representate(representate_id)

);
GO


/*=======================AGREGAR LOS CAMPOS DE AUDITORIA A PRODUCTO ========================*/

ALTER TABLE producto (

ADD
created_at DATETIME2 NOT NULL,
updated_ DATETIME2 NOT NULL;

GO

ALTER TABLE producto

ADD CONSTRAINT df_producto_created_at
DEFAULT SYSDATETIME ();
GO

ALTER TABLE producto
ADD CONSTRAINT df_producto_updated_at
DEFAULT SYSDATETIME () FOR updated_at
);




/*=======================AGREGAR LA FOREIG KEY A REPRESNETATE DE OFICINA ========================*/

ALTER TABLE representate 
ADD CONSTRAINT fk_represntate_oficina
FOREIGN KEY (oficina_id)
REFERENCES oficina (oficina_id)

/*=======================CREAR TABLA CLIENTE ========================*/

CREATE TABLE cliente (
cliente_id INT NOT NULL IDENTITY
CONSTRAINT pk_cliente 
PRIMARY KEY,
empresa VARCHAR (30) NOT NULL
CONSTRAINT uq_cliente_empresa
UNIQUE,
limite_credito DECIMAL (10,2) NOT NULL
CONSTRAINT ck_cliente_limite_credito
CHECK (limite_credito BETWEEN 1000 AND 1000000),
created_at DATETIME NOT NULL
CONSTRAINT df_cliente_created_at
DEFAULT SYSDATETIME (),
updated_at DATETIME2 NOT NULL
CONSTRAINT df_cliente_updated_at
DEFAULT SYSDATETIME (),
represntate_id INT NOT NULL -- FOREIGN KEY DE REPRESENTATE
CONSTRAINT fk_cliente_represntate
FOREIGN KEY (represntate_id)
REFERENCES representate (representate_id)


)


/*=======================PEDIDO ========================*/

