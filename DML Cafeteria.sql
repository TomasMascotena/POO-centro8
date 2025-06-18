use cafeteria;
INSERT INTO personas(nombre, apellido, rol) VALUES
('Ruben','Gonzales','cajero'),
('Maria','Perez','cajero'),
('Cristian','Ladino','mozo'),
('Julia','Santos','mozo');

INSERT INTO productos (nombre, precio, categoria) VALUES
('Café con leche', 1200.00, 'bebidas calientes'),
('Café espresso', 1050.00, 'bebidas calientes'),
('Capuchino', 1250.00, 'bebidas calientes'),
('Submarino', 1350.00, 'bebidas calientes'),
('Té', 950.00, 'bebidas calientes');


INSERT INTO productos (nombre, precio, categoria) VALUES
('Agua mineral', 800.00, 'bebidas frias'),
('Gaseosa 350ml', 1000.00, 'bebidas frias'),
('Licuado de banana', 1500.00, 'bebidas frias'),
('Jugo exprimido de naranja', 1600.00, 'bebidas frias'),
('Té frío con limón', 1300.00, 'bebidas frias');

INSERT INTO productos (nombre, precio, categoria) VALUES
('Tostado de jamón y queso', 2900.00, 'comidas'),
('Empanada de carne', 1200.00, 'comidas'),
('Empanada de jamón y queso', 1200.00, 'comidas'),
('Milanesa con papas', 11000.00, 'comidas'),
('Tarta de verduras', 10000.00, 'comidas'),
('Sandwich de pollo caliente', 18000.00, 'comidas'),
('Fideos con tuco', 9000.00, 'comidas'),
('Sopa del día', 7500.00, 'comidas'),
('Hamburguesa completa', 15000.00, 'comidas'),
('Omelette de queso', 2000.00, 'comidas');

INSERT INTO productos (nombre, precio, categoria) VALUES
('Medialuna de manteca', 600.00, 'pasteleria'),
('Medialuna de grasa', 600.00, 'pasteleria'),
('Torta de chocolate', 4500.00, 'pasteleria'),
('Torta de ricota', 1900.00, 'pasteleria'),
('Tarta de frutilla', 4100.00, 'pasteleria'),
('Budín de limón', 3000.00, 'pasteleria'),
('Brownie', 2400.00, 'pasteleria'),
('Alfajor de maicena', 1000.00, 'pasteleria'),
('Muffin de arándanos', 2400.00, 'pasteleria');

INSERT INTO pedidos (tipo_pedido, estado, esta_pagado, monto_total, fecha_hora_creacion, fecha_hora_entrega, numero_mesa, id_responsable) VALUES
('en_mesa', 'en_proceso', FALSE, 11900.00, '2025-06-15 09:15:00', NULL, 1, 3),
('en_mesa', 'entregado', FALSE, 8300.00, '2025-06-15 10:05:00', '2025-06-15 10:40:00', 2, 3),
('para_llevar', 'entregado', FALSE, 3200.00, '2025-06-15 10:30:00', '2025-06-15 11:00:00', NULL, 1),
('delivery', 'en_proceso', TRUE, 4600.00, '2025-06-15 11:15:00', NULL, NULL, 1),
('en_mesa', 'entregado', TRUE, 15000.00, '2025-06-15 12:45:00', '2025-06-15 13:30:00', 3, 3),
('para_llevar', 'en_proceso', TRUE, 2900.00, '2025-06-15 13:10:00', NULL, NULL, 1),
('en_mesa', 'entregado', FALSE, 9300.00, '2025-06-15 14:20:00', '2025-06-15 15:00:00', 4, 4),
('delivery', 'entregado', TRUE, 6200.00, '2025-06-15 15:05:00', '2025-06-15 15:50:00', NULL, 2),
('en_mesa', 'en_proceso', FALSE, 8400.00, '2025-06-15 15:45:00', NULL, 5, 4),
('para_llevar', 'en_proceso', FALSE, 4100.00, '2025-06-15 16:10:00', NULL, NULL, 2),
('en_mesa', 'entregado', TRUE, 15500.00, '2025-06-15 17:25:00', '2025-06-15 18:00:00', 6, 4),
('delivery', 'en_proceso', TRUE, 5800.00, '2025-06-15 17:45:00', NULL, NULL, 2);

-- Pedido 1 - $11.900
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 3, 2, 1250.00),         -- Capuchino
(1, 10, 2, 2900.00),        -- Tostado
(1, 2, 1, 1050.00),         -- Café espresso
(1, 7, 1, 1050.00);         -- Gaseosa 350ml

-- Pedido 2 - $8.300
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(2, 1, 1, 1200.00),         -- Café con leche
(2, 10, 2, 2900.00);        -- Tostado

-- Pedido 3 - $3.200
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(3, 7, 2, 1200.00),         -- Empanadas carne
(3, 2, 1, 800.00);          -- Agua mineral

-- Pedido 4 - $4.600
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(4, 1, 1, 1200.00),         -- Café con leche
(4, 18, 1, 2400.00),        -- Brownie
(4, 8, 1, 1000.00);         -- Alfajor de maicena

-- Pedido 5 - $15.000
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(5, 14, 1, 15000.00);       -- Hamburguesa completa

-- Pedido 6 - $2.900
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(6, 10, 1, 2900.00);        -- Tostado

-- Pedido 7 - $9.300
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(7, 11, 2, 1200.00),        -- Empanadas jamón y queso
(7, 1, 1, 1200.00),         -- Café con leche
(7, 6, 1, 1300.00),         -- Té frío con limón
(7, 18, 1, 2400.00);        -- Brownie

-- Pedido 8 - $6.200
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(8, 3, 1, 1250.00),         -- Capuchino
(8, 5, 1, 950.00),          -- Té
(8, 17, 1, 3000.00),        -- Budín de limón
(8, 8, 1, 1000.00);         -- Alfajor

-- Pedido 9 - $8.400
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(9, 3, 1, 1250.00),         -- Capuchino
(9, 18, 1, 2400.00),        -- Brownie
(9, 7, 1, 1200.00),         -- Empanada carne
(9, 6, 1, 1300.00),         -- Té frío
(9, 8, 1, 1000.00),         -- Alfajor
(9, 5, 1, 950.00);          -- Té

-- Pedido 10 - $4.100
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(10, 19, 1, 4100.00);       -- Tarta de frutilla

-- Pedido 11 - $15.500
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(11, 14, 1, 15000.00),      -- Hamburguesa completa
(11, 7, 1, 500.00);         -- Ajuste con empanada más barata (asumimos nuevo precio si necesario o promoción)

-- Pedido 12 - $5.800
INSERT INTO detallepedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(12, 1, 1, 1200.00),        -- Café con leche
(12, 18, 1, 2400.00),       -- Brownie
(12, 8, 1, 1000.00),        -- Alfajor
(12, 5, 1, 950.00),         -- Té
(12, 7, 1, 250.00);         -- Ajuste con precio reducido (promo/porción chica)


