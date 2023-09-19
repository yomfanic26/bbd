-- crear tabla estudiantes
drop table estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	gmail varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
	
)