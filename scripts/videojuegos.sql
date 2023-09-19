-- crear tabla videojuegos

create table videojuegos
(
    codigo int NOT NULL,
    nombre varchar(100) NOT NULL,
    descripcion varchar(300),
    valoracion int  NOT NULL,
    CONSTRAINT videojuegos_pk PRIMARY KEY (codigo)
)
