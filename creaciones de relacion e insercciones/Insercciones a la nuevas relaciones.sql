--RELACION USUARIO CUENTAS
select * from usuarios
--ingreso de otrousurio
insert into usuarios (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('1234567890','Leonel','Messi','ahorro',50000)
--ingreso de 10 cuentas
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','1234567890','24/03/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('02453','1234567890','24/03/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00112','1234567890','24/05/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('02345','1234567890','24/12/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('11345','1234567890','24/11/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00002','0803473784','24/09/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00003','0803473784','24/08/2021',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00004','0803473784','24/09/2023',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00005','0803473784','24/10/2023',20000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00006','080347378','11/01/2023',20000);
		
		
--RELACION CLIENTES COMPRA---
select * from clientes
insert into clientes (cedula,nombre,apellido,edad)
values('0803473784','Jonathan','Valencia',25);

insert into compra (id_compra,cedula,fecha_compra,monto)
values('0001','0803473784','11/01/2023',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0002','0803473784','11/01/2022',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0003','0803473784','11/01/2023',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0004','0803473784','20/10/2021',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0005','0803473784','11/01/2023',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0006','0803473784','11/01/2023',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0007','0803473784','11/01/2023',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0008','0803473784','08/05/2022',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0009','0803473784','11/01/2023',250);
insert into compra (id_compra,cedula,fecha_compra,monto)
values('0010','0803473784','09/11/2021',250);

--RELACION PRODUCTOS COMPRA---
select * from venta
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0001',1,'15/09/2022',100);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0002',2,'15/09/2022',10);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0003',2,'15/09/2022',20);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0004',3,'15/09/2022',100);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0005',3,'15/09/2022',100);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0006',7,'15/09/2022',100);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0007',7,'15/09/2022',80);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0008',8,'15/09/2022',65);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0009',8,'15/09/2022',15);
insert into venta (id_venta,codigo_producto,fecha_venta,cantidad)
values('0010',6,'15/09/2022',100);

--RELACION VIDEOJUEGO PLATAFORMA--
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (1, 'Steam', 1);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (2, 'Games torent', 2);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (3, 'Uplay', 3);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (4, 'Epic Store', 4);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (5, 'Social Club', 5);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (6, 'Google Stadia', 6);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (7, 'Amazon Games', 7);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (8, 'Uplay', 8);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (9, 'Origin', 7);
INSERT INTO plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (10, 'Games torrent', 7);


--RELACION  COLEGIO ESTUDIANTE

--insertar 8 estudiantes
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('12345','Jeferson','Franco','lacucho@gmail.com','20/05/2004',001);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('54678','Sisiño','Lopez','lasisi@gmail.com','10/11/2008',001);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('88452','Miguel','Gonzales','miguel@gmail.com','15/08/1997',001);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('45783','Juliana','Canchingre','layuli@gmail.com','20/08/2001',001);
insert into estudiantes(cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('45687','Jonathan','Valencia','jonathan.va94@gmail.com','29/03/1994',001);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('01245','Patricia','Angulo','lacolombian25@gmail.com','09/09/1970',001);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('12445','Alexandro','Gualas','lacucho@gmail.com','15/04/1998',001);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('98452','Marilyn','Gualacara','lacucho@gmail.com','29/02/1996',003);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('46654','Marilyn','Gualacara','lacucho@gmail.com','29/02/1996',002);
insert into estudiantes (cedula,nombre,apellido,gmail,fecha_nacimiento,codigo_colegio)
values ('66658','Marilyn','Gualacara','lacucho@gmail.com','29/02/1996',004);

--insert de colegio
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (001, 'MARIA AUXILIADORA', 'ESMERALDAS', '123456789');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (002, 'SAGRADO CORAZON', 'ESMERALDAS', '123456789');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (003, 'DON BOSCO', 'ESMERALDAS', '7869456441');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (4, 'INMACULADA', 'ESMERALDAS', '4564527869');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (005, 'ESMERALDAS LIBRE', 'ESMERALDAS', '8974342423');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (006, 'SAN JOSE OBRERO', 'ESMERALDAS', '458798451');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (007, 'JOSE MARIA VELZCO IBARRA', 'ESMERALDAS', '0969293599');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (008, 'LUIS VARGAS TORRES', 'ESMERALDAS', '123456789');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (009, 'NUEVOS HORIZONTES', 'ESMERALDAS', '445566998');
INSERT INTO colegios(codigo, nombre, direccion, telefono)
VALUES (010, 'MARGARITA CORTES', 'ESMERALDAS', '012345678');

---RELACION REGISTROS DE ENTRADA EMPLEADO
--insert de empleado
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (021, 'Miguel', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (022, 'Leopoldo', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (023, 'Kevin', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (024, 'Marlon', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (025, 'Andres', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (026, 'Santiago', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (027, 'Angie', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (028, 'Jenniffer', '14-8-16', '09:16');
INSERT INTo empleados(codigo_empleado, nombre, fecha, hora)
VALUES (029, 'Marmadu', '14-8-16', '09:16');
INSERT INTO empleados(codigo_empleado, nombre, fecha, hora)
VALUES (030, 'Lupe', '14-8-16', '09:16');

--inser de registros de entrada
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(001,'0123456781','01/01/2023','13:25',21);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(002,'0123456782','01/02/2023','12:25',22);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(003,'0123456783','01/03/2023','14:25',23);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(004,'0123456784','01/04/2023','15:25',24);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(005,'0123456785','01/05/2023','16:25',25);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(006,'0123456786','01/06/2023','17:25',26);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(007,'0123456787','01/07/2023','18:25',27);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(008,'0123456788','01/08/2023','19:25',28);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(009,'0123456789','01/09/2023','10:25',29);
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(010,'0123456780','01/10/2023','20:25',30);ç

--RELACION PERSONAS PRESTAMO
--insert de personas
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0358789284', 'Edigson', 'Morocho', '20-06-2023','C');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0358789281', 'Mateo', 'Castro', '15-06-2020','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0358789282', 'Marlon', 'Perlaza', '15-06-2020','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0358789234', 'Julian', 'Alcivar', '20-06-2023','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('7358789254', 'Karen', 'Pinargote', '15-06-2020','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('8358789289', 'Patricia', 'Estrada', '20-06-2023','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0358789289', 'Marlon', 'Gomez', '20-06-2023','C');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0458786451', 'Elias', 'Torres', '20-06-2023','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('6843456558', 'Miguel', 'Aguirre', '15-06-2020','S');
INSERT INTO personas(cedula, nombre, apellido, fecha_nacimiento,estado_civil_codigo)
VALUES ('0677446345', 'Linda', 'Romero', '15-06-2020','S');
-- insert prestamo
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0358789284', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0358789281', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0358789282', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0358789234', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('7358789254', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('8358789289', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0358789289', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0458786451', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('6843456558', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');
INSERT INTO prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES ('0677446345', 875.5, '13-6-15', '15:05', 'Santiago Mosquera');

--RELACION BANCO TRANSACCIONES
--insert de transacciones
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (020,'01234',78.36,'C','01/01/2023','01:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (021,'01231',718.36,'D','01/02/2023','02:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (022,'01232',178.36,'D','01/03/2023','03:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (023,'01233',478.36,'C','01/04/2023','04:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (024,'01235',578.36,'D','01/05/2023','05:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (025,'01236',678.36,'C','01/06/2023','06:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (026,'01237',778.36,'D','01/07/2023','07:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (027,'01238',788.36,'D','01/08/2023','08:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (028,'01239',748.36,'C','01/09/2023','09:05');
INSERT INTO transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (029,'01240',788.36,'D','01/10/2023','00:05');

--inser de banco
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (61, 20, 'CREDITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (62, 21, 'DEBITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (63, 22, 'CREDITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (64, 23, 'CREDITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (65, 24, 'DEBITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (66, 25, 'CREDITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (67, 26, 'DEBITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (68, 27, 'DEBITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (69, 28, 'CREDITO');
INSERT INTO banco(codigo_banco, codigo_transaccion, detalle)
VALUES (70, 29, 'CREDITO');
