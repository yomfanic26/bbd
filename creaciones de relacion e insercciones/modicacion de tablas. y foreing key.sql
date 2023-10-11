--Crea la tabla personas
drop table personas
select * from personas
create table personas (
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura numeric,
	fecha_nacimiento date,
	hora_nacimiento  time ,
	cantidad_ahorrada money,
	numero_hijos int ,
	constraint personas_pk primary key (cedula)
)

--agregar columna
alter table personas 
	add column estado_civil_codigo char (1) not null
	
	drop table estado_civil
--Crear tabla estado civil
create table estado_civil (
	codigo char (1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key (codigo)
)

--creando clave foranea de estado civil en tabla personas
alter table personas
add constraint personas_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil (codigo)

select * from estado_civil
--insertar estado civiles
insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');

--inserta personas
insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('0803473782','Jonathan2','Valencia2','U')


--***********************************************************************--
--RETO 23 CREACION DE TABLAS CON FOREING KEY

--Creacion de tabla usuario
create table usuarios(
	cedula char (10) not null,
	nombre varchar(25) not null,
	apellido varchar not null (25),
	tipo_cuenta varchar (20),
	limite_credito decimal(10,2),
	constraint 	usuarios_pk primary key (cedula)
	insert into usuarios values('0803473784','Jonathan','Valencia');
)
--TABLA CUENTAS
drop table cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char (10) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
	)
	--modificando tabla cuenta y creando PK
	select * from cuentas
alter table cuentas
add constraint 	cuentas_usuarios_fk foreign key (cedula_propietario) references usuarios (cedula)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00213','0803473784','05/10/2023',5000);

---TABLA COMPRAS
--Creacion de tabla compra
drop table compra
create table compra (
	id_compra int not null,
	cedula char(10)not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint 	compra_pk primary key (id_compra ),

	constraint 	compra_clientes_fk foreign key (cedula) references clientes (cedula)
	)
	
---TABLA PRODUCTOS
--Creacion de tabla venta
create table venta (
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad decimal(10,2),
	constraint 	venta_pk primary key (id_venta ),

	constraint 	venta_producto_fk foreign key (codigo_producto) references productos (codigo)
	)
--TABLA PLATAFORMAS
--Creacion de tabla plataforma
drop table plataformas
create table plataformas (
	id_plataforma int not null,
	nombre_plataforma varchar (50) not null,
	codigo_videojuego int not null,
	constraint 	plataforma_pk primary key (id_plataforma ),

	constraint 	plataforma_videojuego_fk foreign key (codigo_videojuego) references videojuegos(codigo)
)

--TABLA COLEGIO
--creacion tabla colegio
create table colegios (
	codigo int not null,
	nombre varchar (50) not null,
	direccion varchar (50) not null,
	telefono char (9) not null,

	constraint 	colegios_pk primary key (codigo )
)

-- creacion de llave foranea en clase estudiante
alter table estudiantes 
 
add column codigo_colegio int not null,
add constraint 	estudiantes_colegios_fk foreign key (codigo_colegio) references colegios (codigo)

--TABLA EMPLEADO
create table registros_entrada
(
    codigo_registro int NOT NULL,
    cedula_empleado char(10) NOT NULL,
    fecha date NOT NULL,
    hora time  NOT NULL,
	codigo_empleado int not null,
    CONSTRAINT registros_entrada_pk PRIMARY KEY (codigo_registro)
)
create table empleados(
	codigo_empleado int  not null,
	nombre varchar (25) not null,
	fecha date not null,
	hora time not null,
	constraint 	empleado_pk primary key (codigo_empleado )
	
)
-- creacion de llave foranea en clase registro_entrada

alter table registros_entrada 
add constraint 	registro_entrada_empleados_fk foreign key (codigo_empleado) references empleados (codigo_empleado)

--TABLA PRESTAMO
create table prestamo(
	cedula char (10) not null,
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint 	prestamo_pk primary key (cedula),
	constraint 	prestamo_persona_fk foreign key (cedula) references personas (cedula)
)

--TABLA BANCO
create table banco(
codigo_banco int,
	codigo_transaccion int,
	detalle varchar (100),
	constraint 	banco_pk primary key (codigo_banco),
	constraint 	banco_transacciones_fk foreign key (codigo_transaccion) references transacciones (codigo)
)

