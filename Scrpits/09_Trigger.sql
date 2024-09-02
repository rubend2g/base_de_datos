-- Creacion de tabla para guardar los  nuevos registros .
drop table if exists log_audi_nuevo_producto;
create table log_audi_nuevo_producto(
	id int auto_increment primary key,
    nombre_de_accion varchar(150),
    nombre_tabla varchar(250),
    usuario varchar (100),
    fecha_accion date
    
);


-- Creacion de trigger para insertar un nuevo producto.
drop trigger if exists trg_insert_producto ;
delimiter //
create trigger trg_insert_producto
after insert on producto
for each row
begin

insert into log_audi_nuevo_producto(nombre_de_accion, nombre_tabla,usuario, fecha_accion)
values ('INSERT','PRODUCTO', current_user(),now());

end//
delimiter ;

select * from log_audi_nuevo_producto;

insert into producto(id, nombre, cantidad, id_asesor, id_cliente, id_sector)
values (19,'espatula',50, 2, 6, 3);

delimiter //

-- Creacion de tabla para guardar los registros que se borran.
drop table if exists log_audi_borrar_producto;
create table log_audi_borrar_producto(
	id int auto_increment primary key,
    nombre_de_accion varchar(150),
    nombre_tabla varchar(250),
    usuario varchar (100),
    fecha_accion date
    
);

-- Creacion de trigger que elimine un producto.
drop trigger if exists trg_delete_producto;
delimiter //
create trigger trg_delete_producto
after delete on producto
for each row
begin

insert into log_audi_borrar_producto(nombre_de_accion, nombre_tabla,usuario, fecha_accion)
values ('DELETE','PRODUCTO', current_user(),now());

end//
delimiter ;
