-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS cafeteria;
USE cafeteria;

-- Tabla Persona (mozos/cajeros)
CREATE TABLE Persona (
    id_persona INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    rol ENUM('mozo', 'cajero') NOT NULL
);

-- Tabla Producto
CREATE TABLE Producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50)
);

-- Tabla Pedido
CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    tipo_pedido ENUM('en_mesa', 'para_llevar', 'delivery') NOT NULL,
    estado ENUM('orden_tomada', 'en_proceso', 'entregado', 'pagado') NOT NULL,
    monto_total DECIMAL(10, 2) NOT NULL,
    fecha_hora_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_hora_entrega DATETIME NULL,
    numero_mesa INT NULL,
    id_responsable INT NOT NULL,
    FOREIGN KEY (id_responsable) REFERENCES Persona(id_persona)
);

-- Tabla DetallePedido (relación entre Pedido y Producto)
CREATE TABLE DetallePedido (
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_pedido, id_producto),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
