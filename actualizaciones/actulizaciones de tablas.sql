--Actualizar el stok a 0 ent odos los producto dond ela descripcion sea null
update productos set stock='0' where descripcion is null

--Actualizar el saldo a 10 de las cuentas cuya cedula_propietario empiece con 17
update cuentas set saldo='10' where cedula_propietario like '17%' 

--Actualizar el apellido por Hernandez a todos los estudiante que tenga una cedula que empieza por 17
update estudiantes set apellido='Hernandez' where cedula like '17%' 

--Actualia las cedual de registro_entrada por "082345679" para todo los registros del mes de agosto
update registros_entrada set cedula_empleado='082345679' where fecha between '1/08/2023' and '31/08/2023'

--Actualiza todas las descripciones de los videeojuegos cuya valoracion sea mayor que 9 por "Mejor puntuado·"
update videojuegos set descripcion='Mejor Puntuado' where valoracion>9

--Actualiza Tipo de todos registros que tengan una transaccion mayor a 100 y menor que 500,
--que se hayan llevado a cabdo el mes de septiembre con horas entre 14:00 y 20:00, por "Transferencia"
update transacciones set tipo='Transferencia' where monto > money(100) and monto <money(500)  and
hora between '14:00' and '20:00'
select * from transacciones