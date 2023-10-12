--AGREGACION
--OPERACIONSE SOBRE UN COJUNTO DE RESULTADOS
--COUNT
select count (cedula) from personas 

--FUNCION AVG
SELECT * FROM PERSONAS
select AVG (cast (cantidad_ahorrada as numeric)) from personas

--GRouP BY
SELECT estado_civil_codigo, count(*) FROM PERSONAS
group by estado_civil_codigo

SELECT estado_civil_codigo, sum(numero_hijos) FROM PERSONAS
group by estado_civil_codigo
select * from cuentas

-----RETO 25 FUNCIONES DE AGREGACION-----

--RELACION CUENTAS CON USUARIO
--Función de agregación 1: Obtener el saldo promedio 
--de todas las cuentas de un usuario específico.
--NOTA-- roudn ,2 permite redondear los decimales a 2
select round(avg(cast(cu.saldo as numeric)),2) from cuentas cu, usuarios usu 
where cu.cedula_propietario = usu.cedula 
and usu.cedula ='1234567890'

--Función de agregación 2: Obtener el número total de cuentas de cada tipo de cuenta.
select usu.tipo_cuenta ,count(cu.numero_cuenta) from cuentas cu,usuarios usu
where cu.cedula_propietario = usu.cedula
group by usu.tipo_cuenta
select * from compra

---RELACION CLIENTES COMPRAS---
--Función de agregación 1: Obtener el monto total de compras realizadas por cada cliente.
select cli.cedula , cli.nombre, count(com.monto) from compra com,clientes cli
where cli.cedula = com.cedula
group by cli.cedula

--Función de agregación 2: 
--Obtener la cantidad total de compras realizadas en una fecha específica.
select fecha_compra,count (*)  AS "Total_compras" from compra
where fecha_compra = '2023-01-11'
group by fecha_compra

---RELACION ENTRE PROFESORES Y ESTUDIANTES---
--Función de agregación 1: Obtener la cantidad total de estudiantes asignados a cada profesor.
select co.codigo AS "codigo_colegio",co.nombre,count (*) 
AS "toltal_estudiantes" from estudiantes es,colegios co
where co.codigo = es.codigo_colegio 
group by co.codigo

--Función de agregación 2: Obtener la edad promedio de los estudiantes
SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) 
AS edad_promedio FROM estudiantes;

---RELACION ENTRE PERSONA Y PRESTAMO---
--Función de agregación 1: Obtener la suma total de los montos de préstamos para cada persona.
select per.cedula,sum(pre.monto)AS "sumaa_total_prestamos" from personas per, prestamo pre
where per.cedula = pre.cedula
group by per.cedula
select * from personas
--Función de agregación 2: Obtener la cantidad total de personas que tienen más de un hijo.
select  count (*) AS "total_personas" from personas
where numero_hijos >1

---RELACION PRODUCTOS VENTA--
--Función de agregación 1: Obtener el máximo precio de todos los productos.--
SELECT MAX(precio) As "maximo_precio" from productos

--Función de agregación 2: Obtener la suma total de la cantidad de productos vendidos.
select sum(codigo_producto) As "cantidad_total_vendida" from venta

---RELACION TRANSACCION BANCO---
--Función de agregación 1: Obtener la cantidad total de transacciones de tipo 'C' (crédito).
select count(1) As "cantidad_transacciones_credito" from transacciones
where tipo='C'

--Función de agregación 2: Obtener el promedio de montos de transacciones 
--para cada número de cuenta

select numero_cuenta , ROUND (AVG(CAST (monto AS DECIMAL)),2) AS "monto_promedio"
FROM transacciones group by numero_cuenta

---RELACION ENTRE VIDEOJUEGOS Y PLATAFORMA---
--Función de agregación 1: Obtener la cantidad total de plataformas 
--disponibles para cada videojuego.
select vi.codigo, count(pla.id_plataforma) As "total_plataformas"
from plataformas pla,videojuegos vi
where vi.codigo=pla.codigo_videojuego group by vi.codigo

--Obtener la valoración promedio de todos los videojuegos.
select ROUND(AVG(valoracion),2) AS "valoracion_promedio"
from videojuegos

---RELACION ENTRE REGISTROS DE ENTRADA Y EMPLEADO---
--Función de agregación 1: Obtener la cantidad total 
--de registros de entrada realizados por cada empleado
select re.cedula_empleado, count(em.codigo_empleado) As "total_registros_entrada"
from empleados em,registros_entrada re where em.codigo_empleado =re.codigo_empleado
group by re.cedula_empleado

--Función de agregación 2: Obtener la fecha mínima y máxima de los registros de entrada.
select min(fecha) As "fecha_,minima", max(fecha) "fecha_maximo"
from registros_entrada