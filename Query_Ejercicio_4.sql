Create table Almacenes(
	id serial primary key,
	direccion varchar not null,
	id_provincia int not null unique,
	f_apertura date not null
);
Create table Provincias(
	id serial primary key,
	nombre varchar not null,
	extension int not null,
	id_almacen int not null references Almacenes(id)
);
Create table Poblaciones(
	id serial primary key,
	nombre varchar not null,
	habitantes int not null,
	id_provincia int references Provincias(id)
);
Create table Socios(
	id serial primary key,
	id_avalista int references Socios(id),
	dni varchar not null,
	nombre varchar not null,
	apellido varchar not null,
	telefono int not null,
	id_poblacion int references Poblaciones(id)
);
Create table Colecciones (
	id serial primary key,
	valumenes integer not null
);
Create table Libros (
	ISBN varchar primary key,
	titulo varchar not null,
	autor varchar not null,
	editorial varchar not null,
	id_coleccion int references Colecciones(id)
);

Create table Stock(
	ISBN_libro varchar not null references Libros(ISBN),
	id_almacen int not null references Almacenes(id),
	cantidad int 
);
Create table Pedidos(
	id serial primary key,
	id_socio int not null references Socios(id),
	forma_pago varchar not null,
	forma_envio varchar not null
);
Create table Detalles_Pedido(
	id_pedido int references Pedidos(id),
	codigo int ,
	ISBN varchar not null references Libros(ISBN),
	Cantidad  int not null,
	Primary key (id_pedido,codigo)
);
Alter table Almacenes add constraint fk_almacenes foreign key(id_provincia) references Provincias(id);
