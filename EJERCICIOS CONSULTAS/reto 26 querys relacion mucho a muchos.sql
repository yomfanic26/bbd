---1. RELACION DE MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO---
--creacion tabla usuarios
create table usuarios(
	id_usuario int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id_usuario)
	
)

--creacion de tabla grupo
create table grupo (
	id_grupo int not null,
	nombre  varchar (25) not null,
	descripcion varchar(75) not null,
	fecha_creacion date,
	constraint grupo_pk primary key (id_grupo)
)
--creacion de tabla compuesta (relacion M a M) entre usuarios y grupo
create table usuario_grupo (
	us_id_usuarios int not null,
	gr_id_grupo int not null,
	constraint usuarios_fk foreign key (us_id_usuarios) references usuarios (id_usuario),
	constraint grupo_fk foreign key (gr_id_grupo) references grupo (id_grupo),
	constraint usuarios_grupo_pk primary key (us_id_usuarios,gr_id_grupo)

)

---2. RELACION DE MUCHOS A MUCHOS ENTRE HABITACIONES Y HUESPEDES
--crecion de tabla habitaciones
create table habitaciones (
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
	)
--creacion de tabla huspedes
create table huespedes (
	id_huesped int not null,
	nombre varchar (45) not null,
	apellido varchar (45) not null,
	telefono char (10),
	correo varchar (45),
	direccion varchar (45),
	ciudad varchar (45),
	pais varchar (45),
	constraint huespedes_pk primary key (id_huesped)
)
--creacion de tabla unios_reservas
create table reservas (
	inicio_fecha date,
	fin_fecha date,
	ha_id_habitacion int not null,
	hu_id_huesped int not null,
	constraint habitacion_fk foreign key (ha_id_habitacion) references habitaciones (habitacion_numero),
	constraint huesped_fk foreign key (hu_id_huesped) references huespedes (id_huesped),
	constraint habitacion_huesped_pk primary key (ha_id_habitacion,hu_id_huesped)
)

---RELACION DE MUCHOS A MUCHOS ENTRE MUNICIPIO Y PROYECTO---
--creacion de tabla ciudad
create table ciudad (
	id_ciudad int not null,
	nombre varchar (45) not null,
	constraint ciudad_pk primary key (id_ciudad)
)
--creacion de tabla proyecto
create table proyecto (
	id_proyecto int not null,
	proyecto varchar (50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key (id_proyecto)
)

--creacion tabla municipio
create table municipio (
	id_municipio int not null,
	nombre varchar (45) not null,
	ciudad_id int not null,
	constraint ciudad_fk foreign key (ciudad_id)references ciudad (id_ciudad),
	constraint municipio_pk primary key (id_municipio)
)

--crecion tabla de rompimiento proyecto_municio
create table proyecto_municipio (
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key (municipio_id) references municipio (id_municipio),
	constraint proyecto_id_fk foreign key (proyecto_id) references proyecto (id_proyecto),
	constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
)
--******Relación muchos a muchos entre usuarios y grupo*****--
--- Debes seleccionar los nombres de los usuarios y los nombres de los grupos.
select usu.nombre AS "Usuario", gru.nombre AS "Grupo" from  usuarios usu, grupo gru,usuario_grupo usu_gru
where usu.id_usuario = usu_gru.us_id_usuarios
and gru.id_grupo = usu_gru.gr_id_grupo

---- Debes seleccionar el nombre de los usuarios.
--Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo" donde "gr_id" sea igual a 1.
select usu.nombre As "Usuario" from usuarios usu
where usu.id_usuario IN 
(select usu_gru.us_id_usuarios from usuario_grupo usu_gru where usu_gru.gr_id_grupo=1)
 
--Debes seleccionar el nombre del grupo y contar la cantidad de "us_id" en la tabla "usuario_grupo
 select gru.nombre AS "grupo",count (usu_gru.us_id_usuarios) AS "cantidad_id_usuario" 
 from grupo gru, usuario_grupo usu_gru where gru.id_grupo=usu_gru.gr_id_grupo group by gru.nombre
 
---CONSULTA 2----
-- Debes seleccionar los nombres de los usuarios y los nombres de los grupos que contengan la palabra intensivo
select usu.nombre AS "Usuario", gru.nombre AS "Grupo" 
from  usuarios usu, grupo gru,usuario_grupo usu_gru
where usu.id_usuario = usu_gru.us_id_usuarios
and gru.id_grupo = usu_gru.gr_id_grupo and gru.nombre LIKE  '%intensivo%'
 
---- Debes seleccionar el nombre de los usuarios.
--Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo" donde "gr_id" sea igual a 1.
select usu.nombre As "Usuario" from usuarios usu
where usu.id_usuario IN 
(select usu_gru.us_id_usuarios from usuario_grupo usu_gru where usu_gru.gr_id_grupo=2)

--Debes seleccionar el nombre del grupo y obtener el máximo valor de "us_id" en la tabla "usuario_grupo
select gru.nombre AS "grupo",max (usu_gru.us_id_usuarios) AS "cantidad_maxima_usuarios_id",
min (usu_gru.us_id_usuarios) AS "cantidad_minima_id_usuario"
 from grupo gru, usuario_grupo usu_gru where gru.id_grupo=usu_gru.gr_id_grupo group by gru.nombre
 
 ---CONSULTA 3 ----
 --Debes seleccionar los nombres de los usuarios y las fechas de creación de los grupo
 select usu.nombre, gru.fecha_creacion from  usuarios usu, grupo gru,usuario_grupo usu_gru
 where usu_gru.us_id_usuarios = usu.id_usuario and usu_gru.gr_id_grupo= gru.id_grupo
 and gru.fecha_creacion between '2020-03-08' and '2022-03-08'
 
 --- Debes seleccionar el nombre de los usuarios. - Utiliza la tabla "usuarios".
 - Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo" 
 --donde "gr_id" sea igual a 3. - Utiliza la condición "id IN (SELECT ****** FROM ******** WHERE ******** = 3
 select usu.nombre from usuarios usu where usu.id_usuario
IN (select usu_gru.us_id_usuarios from usuario_grupo usu_gru where usu_gru.gr_id_grupo=3)

--- Debes seleccionar la descripción del grupo y contar la cantidad de "us_id" en la tabla "usuario_grupo"
select gru.descripcion AS "descripcion_grupo", count (usu_gru.us_id_usuarios)
from grupo gru, usuario_grupo usu_gru where usu_gru.gr_id_grupo = gru.id_grupo
and gru.descripcion like '%matutino%' group by gru.descripcion

--- RELACION DE MUCHOS A MUCHOS ENTRE HABITACION Y HUESPEDES---
--- Debes seleccionar el número de habitación, los nombres y apellidos de los huéspedes.--
select ha.habitacion_numero,hues.nombre,hues.apellido from habitaciones ha,huespedes hues,reservas re
where ha.habitacion_numero = re.ha_id_habitacion and hues.id_huesped = re.hu_id_huesped

-- Debes seleccionar los nombres y apellidos de los huéspedes.
-- Utiliza la tabla "huespedes". -- Utiliza una subconsulta para obtener 
--los "huesped_id" de la tabla "reservas" donde "habitacion" sea igual a 2.
select nombre, apellido from huespedes where id_huesped in 
(select re.hu_id_huesped from reservas re where re.ha_id_habitacion=2)

--Debes seleccionar el número de habitación y contar la cantidad de "huesped_id" en la tabla "reservas".
select ha.habitacion_numero, count (re.hu_id_huesped) AS "cantidad_huesped"
from habitaciones ha,reservas re where re.ha_id_habitacion = ha.habitacion_numero
group by ha.habitacion_numero

--consulta2-Debes seleccionar el número de habitación, el piso, los nombres y apellidos de los huéspedes.
select ha.habitacion_numero,ha.piso,hu.nombre,hu.apellido from habitaciones ha, huespedes hu, reservas re
where re.ha_id_habitacion= ha.habitacion_numero and hu.id_huesped = re.hu_id_huesped

--Subconsulta 2: - Debes seleccionar los nombres y apellidos de los huéspedes. - 
--Utiliza una subconsulta para obtener los "huesped_id" de la tabla "reservas" donde "habitacion" sea igual a 3.
SELECT nombre, apellido FROM huespedes
WHERE id_huesped IN ( SELECT id_huesped FROM reservas re WHERE re.ha_id_habitacion= 3)

--Función de agregación 2: - Debes seleccionar el número de habitación y obtener el promedio de "huesped_id" 
--en la tabla "reservas". - Utiliza las tablas "habitaciones" y "reservas". 
select ha.habitacion_numero, ROUND (avg (re.hu_id_huesped),2) AS "promedio_huesped"
from habitaciones ha,reservas re where re.ha_id_habitacion = ha.habitacion_numero
group by ha.habitacion_numero

---CONSULTA 3----
----- Debes seleccionar el número de habitación, los nombres y apellidos de los huéspedes.--
select ha.habitacion_numero,hues.nombre,hues.apellido from habitaciones ha,huespedes hues,reservas re
where ha.habitacion_numero = re.ha_id_habitacion and hues.id_huesped = re.hu_id_huesped

--Subconsulta 3: - Debes seleccionar los nombres y apellidos de los huéspedes. - 
--Utiliza una subconsulta para obtener los "huesped_id" de la tabla "reservas" donde "habitacion" sea igual a 4.
SELECT nombre, apellido FROM huespedes
WHERE id_huesped IN ( SELECT id_huesped FROM reservas re WHERE re.ha_id_habitacion= 4)

--Función de agregación 3: - Debes seleccionar el número de habitación y obtener LA SUMA DE LOS PRECIOS POR NOCHE
--en la tabla "HABITACIONES". - Utiliza las tablas "habitaciones" y "reservas". 
select ha.habitacion_numero,  SUM (ha.precio_por_noche) AS "suma_precios_por_noche"
from habitaciones ha,reservas re where re.ha_id_habitacion = ha.habitacion_numero
group by ha.habitacion_numero

---RELACION DE MUCHOS A MUCHOS ENTRE MUNICIPIO Y PROYECTO---
--consulta 1--
select mun.nombre, proy.proyecto from municipio mun, proyecto proy, proyecto_municipio pm
where mun.id_municipio = pm.municipio_id and pm.proyecto_id=proy.id_proyecto
--subconsulta 2--
--- Debes seleccionar el nombre del proyecto. - Utiliza la tabla "proyecto". 
-- Utiliza una subconsulta para obtener los "proyecto_id" de la tabla "proyecto_municipio" 
--donde "municipio_id" sea igual a 1.
select proyecto AS "nombre_proyecto" from proyecto where id_proyecto
IN(select pm.proyecto_id from proyecto_municipio pm  where pm.municipio_id =1)

--funcion de agregacion2
--- Debes seleccionar el nombre del municipio y contar la cantidad de "proyecto_id" 
--en la tabla "proyecto_municipio".
select mu.nombre AS "nombre_municipio", count (pm.proyecto_id) AS "cantidad_proyecto" 
from municipio mu,proyecto_municipio pm where mu.id_municipio = pm.municipio_id group by mu.nombre

---consulta 2---
--Debes seleccionar el nombre del municipio y el nombre del proyecto. - 
--Utiliza la condición "municipio.nombre LIKE '%GAD%'" para filtrar los municipios que contengan la palabra "GAD" en su nombre.
select mun.nombre, proy.proyecto from municipio mun, proyecto proy , proyecto_municipio pm
where mun.id_municipio=pm.municipio_id and proy.id_proyecto = pm.proyecto_id
and mun.nombre LIKE '%GAD%'

--funcion de agrregacion 2 , obtenr el nombre del municipio y el valor minimo de proyecto id
select mu.nombre AS "nombre_municipio", min (pm.proyecto_id) AS "minimo_valor_id" 
from municipio mu,proyecto_municipio pm where mu.id_municipio = pm.municipio_id group by mu.nombre

--consulta3
--Selecciona el nombre del municipio y el nombre de la ciudad.
--Se realiza una unión entre las tablas "municipio" y "ciudad" utilizando la condición adecuada.
select mun.nombre, ci.nombre from ciudad ci,municipio mun
where mun.ciudad_id = ci.id_ciudad

--Subconsulta 3: Selecciona el proyecto de la tabla "proyecto" 
--donde el id está presente en la subconsulta que obtiene los proyecto_id de la tabla "proyecto_municipio" 
--donde el municipio_id es igual a 3.
select proyecto from proyecto where id_proyecto
IN (select proyecto_id from proyecto_municipio where municipio_id=3)

---funcion de agregacion 3--
--función de agregación 3: Selecciona el nombre del municipio 
--y se obtiene el valor máximo de proyecto_id en la tabla "proyecto_municipio". 
--Se realiza una unión entre las tablas "municipio" y "proyecto_municipio" 
--y se agrupa por el nombre del municipio.
select mu.nombre AS "nombre_municipio", max (pm.proyecto_id) AS "minimo_valor_id" 
from municipio mu,proyecto_municipio pm where mu.id_municipio = pm.municipio_id group by mu.nombre
