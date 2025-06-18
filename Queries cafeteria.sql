use cafeteria;
-- Listar todos los productos ordenados por categoría y precio:
select * from productos order by categoria and precio desc;

-- Listar todos los pedidos con su estado monto total de un dia especifico:
select 		id_pedido, tipo_pedido, estado, monto_total 
from 		pedidos
where date	(fecha_hora_creacion) = '2025-06-15'
order by 	fecha_hora_creacion;

-- Listar detalle completo de cada pedido (con productos incluidos):
select p.id_pedido, pr.nombre 'producto', dp.cantidad, dp.precio_unitario, 
       (dp.cantidad * dp.precio_unitario) 'subtotal'
from detallepedido dp
join productos pr on dp.id_producto = pr.id_producto
join pedidos p on dp.id_pedido = p.id_pedido
order by p.id_pedido;

-- Mostrar pedidos con nombre del mozo o cajero responsable:
select ped.id_pedido, ped.tipo_pedido, per.nombre, per.apellido, per.rol
from pedidos ped
join personas per on ped.id_responsable = per.id_persona
order by ped.fecha_hora_creacion;

-- Total vendido del día (solo pedidos pagados):
select sum(monto_total) 'total_vendido'
from pedidos
where esta_pagado = true and date(fecha_hora_creacion) = '2025-06-15';

-- Cantidad de productos vendidos por categoría (solo de pedidos pagados):
select pr.categoria, sum(dp.cantidad) 'total_vendidos'
from detallepedido dp
join productos pr on dp.id_producto = pr.id_producto
join pedidos p on dp.id_pedido = p.id_pedido
where p.esta_pagado = true
group by pr.categoria;

-- Cantidad de pedidos tomados por cada persona:
select per.nombre, per.apellido, per.rol, count(ped.id_pedido) 'total_pedidos'
from personas per
join pedidos ped on ped.id_responsable = per.id_persona
group by per.id_persona;