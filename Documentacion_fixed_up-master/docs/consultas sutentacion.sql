/*mostrar los proyectos con mas dificultad  OK*/

/*SIN INNER*/
SELECT personas.nombre, proyectos.nombre ,proyectos.dificultades_id_dificultad from personas, proyectos where personas.apellido = "guallara" group by dificultades_id_dificultad;

/*CON INNER*/
select proyectos.id_proyecto id, proyectos.nombre, proyectos.estado, proyectos.dificultades_id_dificultad, proyectos.personas_responsable, personas.nombre, personas.apellido  
from personas inner join proyectos on proyectos.dificultades_id_dificultad = 3 and proyectos.personas_responsable = personas.documento  group by id_proyecto;

-------------------------------------------------------------------------------------------------

/*mostrar los proyectos terminados OK*/

/*SIN INNER*/
select personas.nombre, personas.apellido, personas.documento, tipos_cliente.descripcion_cliente, pedidos.cantidad, proyectos.nombre,proyectos.estado from
personas, tipos_cliente, pedidos, proyectos, estados where proyectos.estado = 3 
and proyectos.personas_responsable = personas.documento group by proyectos.nombre;

/*mostrar los proyectos en pausa OK*/

/*SIN INNER*/
select personas.nombre, personas.apellido, personas.documento, tipos_cliente.descripcion_cliente, pedidos.cantidad, proyectos.nombre,proyectos.estado from
personas, tipos_cliente, pedidos, proyectos, estados where proyectos.estado = 2
and proyectos.personas_responsable = personas.documento group by proyectos.nombre;

/*mostrar los proyectos iniciados OK*/

/*SIN INNER*/
select personas.nombre, personas.apellido, personas.documento, tipos_cliente.descripcion_cliente, pedidos.cantidad, proyectos.nombre,proyectos.estado from
personas, tipos_cliente, pedidos, proyectos, estados where proyectos.estado = 1
and proyectos.personas_responsable = personas.documento group by proyectos.nombre;

--------------------------------------------------------------------------------------------------
/* listar el materia que esta apunto de agotarse OK*/

/*SIN INNER*/
select stocks.id_stock, stocks.stock, materias_prima.referencia from stocks, materias_prima where stock < 15 group by id_stock;

/* contar todas las laminas de acrilico y poliestireno OK*/

/*SIN INNER*/
select sum(stocks.stock) as valor_total_material from stocks;

---------------------------------------------------------------------------------------------------

/* listar las fechas  proyectos entregados en determinada fecha OK*/

/*CON INNER*/
select personas.documento, personas.nombre, clientes.tipos_cliente_id_tipo_cliente, tipos_cliente.descripcion_cliente, pedidos.id_pedido, pedidos.fecha_entrega, proyectos.nombre from
personas inner join clientes on personas.documento = clientes.personas_documento inner join tipos_cliente on clientes.tipos_cliente_id_tipo_cliente = tipos_cliente.id_tipo_cliente
inner join pedidos on clientes.personas_documento = pedidos.clientes_personas_documento inner join proyectos on pedidos.id_pedido = proyectos.pedido_id_pedido where month(fecha_entrega) = 2 and year(fecha_entrega) = 2017;

select pedidos.fecha_entrega from pedidos where month(fecha_entrega) = 2 and year(fecha_entrega) = 2017;

/* listar los proyectos que se se terminaron en el dia OK*/ 

/*CON INNER*/
select personas.documento, personas.nombre, clientes.tipos_cliente_id_tipo_cliente, tipos_cliente.descripcion_cliente, pedidos.id_pedido, pedidos.fecha_entrega, proyectos.nombre as nombre_proyecto from
personas inner join clientes on personas.documento = clientes.personas_documento inner join tipos_cliente on clientes.tipos_cliente_id_tipo_cliente = tipos_cliente.id_tipo_cliente
inner join pedidos on clientes.personas_documento = pedidos.clientes_personas_documento inner join proyectos on pedidos.id_pedido = proyectos.pedido_id_pedido
where fecha_entrega = '2017-02-01'; /* aca podemos usar la funcion now() o en su efecto podemos ingresar una fecha por defecto, ej. '2017-02-01'*/ 

-------------------------------------------------------------------------------------------------

/*mostrar que tipo de cliente que ingreso el proyecto (si es interno, primera vez, empresa, etc)*/

/*si el cliente es interno OK*/
select personas.documento, personas.nombre, personas.apellido, tipos_cliente.descripcion_cliente, pedidos.id_pedido, proyectos.nombre as nombre_proyecto from
personas inner join clientes on personas.documento = clientes.personas_documento inner join tipos_cliente on tipos_cliente.id_tipo_cliente = clientes.tipos_cliente_id_tipo_cliente 
inner join pedidos on clientes.personas_documento = pedidos.clientes_personas_documento inner join proyectos on pedidos.id_pedido = proyectos.pedido_id_pedido
where tipos_cliente.id_tipo_cliente = 1;

/*si el cliente es de una empresa OK*/
select personas.documento, personas.nombre, personas.apellido, tipos_cliente.descripcion_cliente, pedidos.id_pedido, proyectos.nombre as nombre_proyecto from
personas inner join clientes on personas.documento = clientes.personas_documento inner join tipos_cliente on tipos_cliente.id_tipo_cliente = clientes.tipos_cliente_id_tipo_cliente 
inner join pedidos on clientes.personas_documento = pedidos.clientes_personas_documento inner join proyectos on pedidos.id_pedido = proyectos.pedido_id_pedido
where tipos_cliente.id_tipo_cliente = 2;

/*si el cliente es la primera vez y hace un pedido OK*/
select personas.documento, personas.nombre, personas.apellido, tipos_cliente.descripcion_cliente, pedidos.id_pedido, proyectos.nombre as nombre_proyecto from
personas inner join clientes on personas.documento = clientes.personas_documento inner join tipos_cliente on tipos_cliente.id_tipo_cliente = clientes.tipos_cliente_id_tipo_cliente 
inner join pedidos on clientes.personas_documento = pedidos.clientes_personas_documento inner join proyectos on pedidos.id_pedido = proyectos.pedido_id_pedido
where tipos_cliente.id_tipo_cliente = 3;

/*si el cliente es frecuente OK*/
select personas.documento, personas.nombre, personas.apellido, tipos_cliente.descripcion_cliente, pedidos.id_pedido, proyectos.nombre as nombre_proyecto from
personas inner join clientes on personas.documento = clientes.personas_documento inner join tipos_cliente on tipos_cliente.id_tipo_cliente = clientes.tipos_cliente_id_tipo_cliente 
inner join pedidos on clientes.personas_documento = pedidos.clientes_personas_documento inner join proyectos on pedidos.id_pedido = proyectos.pedido_id_pedido
where tipos_cliente.id_tipo_cliente = 4;

-------------------------------------------------------------------------------------------------

/* mostrar los proyectos que se solicitaron mas cantidad -REPLANTEAR-*/

select personas.nombre, clientes.personas_documento, pedidos.id_pedido, proyectos.nombre,max(pedidos.cantidad)
from personas, clientes, pedidos, proyectos;

select  personas.nombre, clientes.tipos_cliente_id_tipo_cliente, pedidos.id_pedido, proyectos.nombre, avg(pedidos.cantidad) from
personas inner join clientes on clientes.personas_documento = personas.documento
inner join pedidos on clientes.personas_documento = pedidos.id_pedido 
inner join proyectos on pedidos.id_pedido = proyectos.id_proyecto;

------------------------------------------------------------------------------------------------------
