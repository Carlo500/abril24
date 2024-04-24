drop table if exists Asuntos ;
drop table if exists Clientes ;
drop table if exists Procurador ;


Create table Clientes (
DNI varchar primary key,
nombre varchar not null,
dirreccion varchar not null
);
Create table Procurador(
DNI varchar primary key,
nombre varchar not null,
direccion varchar not null,
numero_casos integer not null
);

Create table Asuntos(
numero_expediente serial primary key ,
estado bool not null,
dni_cliente varchar not null references Clientes(DNI),
fecha_inicio date not null,
fecha_fin date
);
Create table Asunto_Procurador(
dni_procurador varchar not null references Procurador(DNI),
numero_expediente int references Asuntos(numero_expediente)
);
