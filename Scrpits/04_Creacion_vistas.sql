create or replace view vw_sueldos_mas_altos as (select * from sueldos
where sueldo_bruto between 5500 and 8000);

create or replace view vw_encargado_mas_antiguo as(select max(antiguedad) from encargado_sector);

create or replace view vw_primeros_cinco_clientes as (select * from clientes limit 5);

create or replace view vw_contador_veces_producto as(select nombre , count(*) 
													 from producto group by nombre);

create or replace view vw_muestra_ClienteNombre_IdProducto as (select producto.id , clientes.nombre 
from producto inner join clientes
on producto.ID_CLIENTE = clientes.ID_PRODUCTO);