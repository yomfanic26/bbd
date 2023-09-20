--OPERACIONES CON LA TABLA PRODUCTOS--

-- Trae los producto que empienza con q
select * from productos where nombre like 'Q%'

-- Los productos que tengan una descripcion de NULL
select * from productos where descripcion is null

--Crear un select que traiga todos los producto con un precio entre 2 y 3
 select * from productos where precio between '2' and '3'
 
 ----------------------------------------------------------
 --OPERACIONES CON LA TABLA CUENTAS--
 --Crea un select que traiga el numero de cuenta y el saldo de todas las cuentas
 select numero_cuenta,saldo from cuentas
 
 --Crear un select que traiga los registros entre el dia de hoy hasta 2 meses antes
 select * from cuentas where fecha_creacion between '20/07/2023' and '20/09/2023'
 
 --Crear un select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta 2 meses antes.
 select numero_cuenta,saldo from cuentas where fecha_creacion between '20/07/2023' and '20/09/2023'

 ----------------------------------------------------------
 --OPERACIONES CON LA TABLA ESTUDIANTES--
 --1. Crear un select que traiga el nombre y la cedula de los estudiantes
 select nombre,cedula from estudiantes 
 
 --Crear un select que traiga los nombre de todos los estudiantes cuya cedula empieze con 17
 select nombre from estudiantes where cedula like '17%'
 
 --Crear un select que traiga los nombres completos de todos los estudiante cuyo nombre empieze con A
 select nombre,apellido from estudiantes where nombre like 'A%'
 
 ----------------------------------------------------------
 --OPERACIONES CON LA TABLA REGISTRO DE ENTRADA--
 --Seleccionar todas la cedulas de empleado , fecha y hora de los Registros de entrada
 select cedula_empleado,fecha,hora from registros_entrada
 
--2. Seleccionar los registros de entrada que estén entre 7:00 y 14:00
  select * from registros_entrada where hora between '7:00' and '14:00'
  
--3. Seleccionar los registros de entrada que tengan horas superiores a 8:00
 select * from registros_entrada where hora> '8:00'
 
----------------------------------------------------------
--OPERACIONES CON LA TABLA REGISTRO VIDEOJUEGOS--
 --Seleccionar todos los videojuegos con un nombre que comience con "C"
 select * from videojuegos where nombre like 'C%'
 
 --2. Seleccionar videojuegos con una valoración entre 9 y 10
  select * from videojuegos where valoracion between '9' and '10'

 --3. Seleccionar videojuegos con una descripcion null.
   select * from videojuegos where descripcion is  null

 ----------------------------------------------------------
--OPERACIONES CON LA TABLA TRANSACCIONES--
 --1. Seleccionar todas las transacciones realizadas con un tipo D
 select * from transacciones where tipo='D'
 
 --2. Seleccionar las transacciones con montos entre 200 y 2000
   select * from transacciones where monto between '200' and '2000'
   
 --3. Seleccionar el código, monto, tipo y fecha de las transacciones que tengan un fecha diferente de null
  select codigo,monto,tipo,fecha from transacciones where fecha is not null
