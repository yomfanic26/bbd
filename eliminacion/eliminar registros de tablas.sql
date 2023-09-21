 --Elilimar todos los productos que tengan descripcion null
 delete from productos
  where descripcion is 
  
--Elimina todas las cuentas cuya cedula_propietario empiece por 10  
delete from cuentas
  where cedula_propietario  like '10%' 

--Elimina todos los estudiantes que tengan una cedula que termina por 05
  delete from estudiantes
  where cedula  like '%05' 
  
--Elimina todos los registros del mes de junio  
 delete from registros_entrada
 where fecha  between '01/06/2023' and '30/06/2023'

--Elimina los videojuegos cuya valoracion sea menor que 7
delete from videojuegos
 where valoracion < 7 

--Elimina las transferencia que se hayan hecho entre las 14:00 y 18:00 del mes de agosto del año actual
delete from transacciones
 where fecha between '01/08/2023' and '31/8/2023' and
 hora between '14:00' and '18:00'
