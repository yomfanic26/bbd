------USUARIO Y CUENTAS------
--Consulta : Obtener los números de cuenta y nombres de usuarios 
--cuyos saldos están entre $100 y $1000.
select usu.nombre,cu.numero_cuenta from usuarios usu,cuentas cu
where cu.saldo between 100::money and 1000::money;

--Subconsulta : Obtener todos los datos de cuentas y usuarios 
--donde la fecha de creación de la cuenta esté entre '2022-09-21' y '2023-09-21'.
select * from cuentas , usuarios where fecha_creacion =
ANY (select fecha_creacion from cuentas where fecha_creacion between '21/09/2022' and '21-09-2023')

-----CLIENTE COMPRAS-----
--Consulta : Obtener el nombre y apellido
--de los clientes cédula contenga el número 7 en su número de cédula.
select cli.nombre,cli.apellido from clientes cli,compra com
where com.cedula like '%7%'
select * from clientes
--Subconsulta : Obtener todos los clientes cuya cédula sea igual a la cédula de nombre "Mónica".
SELECT * FROM  clientes cli   
WHERE cli.cedula = (SELECT cli.cedula FROM clientes cli WHERE cli.nombre = 'Monica');

-----ESTUDIANTES Y PROFESORES-----
--Consulta : Obtener el código de colegio con todos los nombres y apellidos de los estudiantes 
--cuyo apellido contiene la letra 'n'.
select col.codigo,es.nombre,es.apellido from colegios col, estudiantes es
where es.apellido like '%n%'

--Subconsulta : Obtener todos los estudiantes 
--cuyo código de colegio corresponde al nombre de "MARIA AUXILIADOR". Ejemplo del resultado :
select * from  estudiantes es where es.codigo_colegio = 
any (select codigo from colegios where nombre='MARIA AUXILIADORA' )

---- PERSONA Y PRESTAMO----
--Consulta : Obtener la cantidad ahorrada, el monto del préstamo 
--y el garante de las personas cuyo préstamo está entre $100 y $1000.
select * from prestamo
select per.cantidad_ahorrada, pre.monto, pre.garante from personas per,prestamo pre
where pre.monto between 100::money and 1000::money

--Subconsulta : Obtener todos los datos de la persona 
--cuya cédula sea igual a la cédula de nombre “Sean"
select * from personas where cedula = 
any(select cedula from personas where nombre='Jonathan')

----PRODUCTOS Y VENTA-----
--Consulta : Obtener el nombre, stock y cantidad de productos y ventas 
--cuyo nombre contiene la letra 'm' o la descripción sea igual a 0
select  pro.nombre, pro.stock, ven.cantidad from venta ven, productos pro
where pro.nombre like '%m%'

--Subconsulta : Obtener el nombre y stock de los productos 
--donde el código de producto de las ventas corresponde a una cantidad de 5.
select * from productos;
select * from venta
select nombre, stock from productos ,venta ven where ven.cantidad = 
any (select cantidad from venta where cantidad=5)

--TRANSACCION Y BANCO
--Consulta : Obtener todas las transacciones de tipo 'C' 
--cuyo número de cuenta esté entre '22001' y '22004'

select * from transacciones tra, banco
where tra.tipo='C' and ( tra.numero_cuenta between '22001' and '22004')

--Subconsulta : Obtener todos los datos de transacciones 
--cuyo código corresponde al código de transacción del banco con código 1
select * from transacciones
select * from banco
select * from transacciones where codigo =
any(select codigo_banco from banco )

--VIDEOJUEGOS PLATAFORMA
--Consulta : Obtener el nombre,descripción,valoración y nombre de plataforma de videojuegos y plataformas 
--cuya descripción contiene 'Guerra' y tienen una valoración mayor a 7 
--o cuyo nombre comienza con'C' y tienen una valoración mayor a 8 
select vid.nombre,vid.descripcion,vid.valoracion, plat.nombre_plataforma
from plataformas plat, videojuegos vid where (vid.descripcion ='Guerra' and vid.valoracion >7)
or (vid.nombre like 'C' and vid.valoracion >8)
select * from plataformas
select * from videojuegos



--Subconsulta : Obtener todos los datos de plataformas 
--donde el código del videojuego corresponde al código de "God of war".

select plat.id_plataforma,plat.nombre_plataforma,plat.codigo_videojuego from plataformas plat
where plat.codigo_videojuego= any(select codigo from  videojuegos where nombre='God of war')

--REGISTRO DE ENTRADA EMPLEADO
--Consulta : Obtener la cédula del empleado, fecha y el nombre de los empleados 
--cuyos registros de entrada tienen fecha entre '2023-08-01' y '2023-08-31'
--o cuya cédula del empleado contiene '17%' y la hora de entrada está entre '08:00' y '12:00' 
--o cuya fecha está entre '2023-10-06' y '2023-10-20', 
--la cédula del empleado contiene '08%' y la hora de entrada está entre '09:00' y '13:00'.

SELECT re.cedula_empleado, re.fecha, em.nombre 
FROM empleados em, registros_entrada re 
WHERE 
    (re.fecha BETWEEN '01/08/2023' AND '31/08/2023')
    OR 
    (re.cedula_empleado LIKE '%17%' AND re.hora BETWEEN '08:00' AND '13:00')
    OR
    (re.fecha BETWEEN '06/10/2023' AND '20/10/2023' 
        AND 
        (re.cedula_empleado LIKE '%08%' AND re.hora BETWEEN '09:00' AND '13:00')
    );
---Subconsulta : Obtener todos los datos de empleado donde el código de registro del empleado
--corresponde al código de registro de entrada de cédula '2201'.

select em.codigo_empleado, em.nombre, em.fecha, em.hora from empleados em
where em.codigo_empleado = any(select codigo_registro from registros_entrada 
					 where cedula_empleado='2201')