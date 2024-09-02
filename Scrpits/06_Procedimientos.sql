drop procedure if exists sp_eliminar_si_existe;

delimiter //
create procedure sp_eliminar_si_existe(in p_id int)
begin

	delete from producto
    where id = p_id;

end//
delimiter ;
 select * from producto ;



-- Se crea un procedimiento que sume una X cantidad a un producto.

drop procedure if exists sp_agrega_producto;
delimiter //
create procedure sp_agrega_producto(in p_producto int,
									in p_cantidad_agregar int)
begin
declare v_cantidad_stock int;
select cantidad into v_cantidad_stock from producto
where ID = p_producto;
	update producto
    set cantidad = v_cantidad_stock + p_cantidad_agregar
    where ID = p_producto;


end//
delimiter ;

