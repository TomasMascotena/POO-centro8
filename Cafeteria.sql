drop database if exists cafeteria;
create database if not exists cafeteria;
use cafeteria;

-- tabla persona (mozos/cajeros)
create table persona (
    id_persona int auto_increment primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    rol enum('mozo', 'cajero') not null
);

-- tabla producto
create table producto (
    id_producto int auto_increment primary key,
    nombre varchar(100) not null,
    precio decimal(10, 2) not null,
    categoria varchar(50)
);

-- tabla pedido
create table pedido (
    id_pedido int auto_increment primary key,
    tipo_pedido enum('en_mesa', 'para_llevar', 'delivery') not null,
    estado enum('en_proceso', 'entregado') not null,
    esta_pagado boolean not null default false,
    monto_total decimal(10, 2) not null,
    fecha_hora_creacion datetime not null default current_timestamp,
    fecha_hora_entrega datetime null,
    numero_mesa int null,
    id_responsable int not null,
    foreign key (id_responsable) references persona(id_persona)
);

-- tabla detallepedido (relación entre pedido y producto)
create table detallepedido (
    id_pedido int not null,
    id_producto int not null,
    cantidad int not null,
    precio_unitario decimal(10, 2) not null,
    primary key (id_pedido, id_producto),
    foreign key (id_pedido) references pedido(id_pedido),
    foreign key (id_producto) references producto(id_producto)
);
