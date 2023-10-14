create table productos (
	codigo int not null,
	nombre varchar (50) not null,
	stock int not null,
	constraint producto_pk primary key (codigo)
	
	)
	
	create table proveedores (
	codigo int not null,
		nombre varchar (50) not null,
		telefono char(10) not null,
		constraint proveedores_pk primary key (codigo)
	)
	--creando tabla de rompimiento
	create table productos_por_proveedores (
		pp_codigo_producto int not null,
		pp_codigo_proveedor int not null,
		precio money  not null,
		constraint producto_fk foreign key (pp_codigo_producto) references productos (codigo),
		constraint proveedor_fk foreign key (pp_codigo_proveedor) references proveedores (codigo),
        constraint productos_proveedores_pk primary key (pp_codigo_producto,pp_codigo_proveedor)
	)
	
	--insertando producto
	insert into productos (codigo,nombre,stock)
	values (001,'papias',10);
		insert into productos (codigo,nombre,stock)
	values (200,'doritos',200);
		insert into productos (codigo,nombre,stock)
	values (300,'cachitos',300);
		insert into productos (codigo,nombre,stock)
	values (400,'takis',0);
	
	--insertando proveedores
		insert into proveedores (codigo,nombre,telefono)
	values (1,'Snack Sa','0994564567');
	insert into proveedores (codigo,nombre,telefono)
	values (2,'Distrinski Sa','0967565511');
	
	--inser tabla de rompimientos
	select * from productos_por_proveedores
	insert into productos_por_proveedores (pp_codigo_producto,pp_codigo_proveedor,precio)
	values (001,1,25);
	insert into productos_por_proveedores (pp_codigo_producto,pp_codigo_proveedor,precio)
	values (200,1,40);
	insert into productos_por_proveedores (pp_codigo_producto,pp_codigo_proveedor,precio)
	values (200,2,35);
	insert into productos_por_proveedores (pp_codigo_producto,pp_codigo_proveedor,precio)
	values (300,2,37);
	insert into productos_por_proveedores (pp_codigo_producto,pp_codigo_proveedor,precio)
	values (400,1,0.78);
	
	select pro.codigo,pro.nombre,prov.nombre from productos pro, proveedores prov,productos_por_proveedores pp
	where pro.codigo=pp.pp_codigo_producto and prov.codigo=pp.pp_codigo_proveedor
	and  pro.nombre='doritos'
	
	