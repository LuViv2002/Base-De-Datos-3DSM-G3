-- ------------------------------------------
-- EJERCICIO 4: Cliente, Pedido y Producto
-- ------------------------------------------
CREATE DATABASE  BD_Ejercicio4;
USE BD_Ejercicio4;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT fk_pedido_cliente 
        FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE Detalle_Pedido (
    id_pedido INT,
    id_producto INT,
    PRIMARY KEY (id_pedido, id_producto),
    CONSTRAINT fk_detalle_pedido 
        FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_detalle_producto 
        FOREIGN KEY (id_producto) REFERENCES Productos(id_producto) 
        ON DELETE CASCADE ON UPDATE CASCADE
);


## Diagrama 
![Diagrama 1 E-R](/img/sql/Ejercicio4.png)
