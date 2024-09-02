-- Esta funcion devuelve a un encargado del sector con determinada antiguedad para posteriormente hacerle un bono por haber llegado a esta antiguedad. 
delimiter &&
create function fn_antiguedad_encargado (p_antiguedad numeric)
returns varchar (250)
deterministic
begin

declare v_respuesta varchar(250);
select nombre into v_respuesta from encargado_sector
where antiguedad = p_antiguedad;

return v_respuesta ;
end&&
delimiter ;

-- Funcion que devuelve al primer comprador del dia de ese producto, para despues hacerle un descuento adicional, o algun premio especial.
delimiter %%
create function fn_primer_comprador_producto_del_dia(p_id_producto int)
returns varchar (250)
deterministic
begin

declare v_respuesta varchar(250);

select id into v_respuesta from clientes
where id_producto = p_id_producto
limit 1;

return v_respuesta ;
end%%
delimiter ;

