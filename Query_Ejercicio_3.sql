Create table Socio(
	id_socio serial primary key,
	dni varchar not null,
	nombre varchar not null,
	apellidos varchar not null,
	fecha_nac date not null,
	domicilio varchar not null
);
Create table Barco(
	matricula varchar primary key,
	nombre varchar not null,
	id_propietario int not null references Socio(id_socio),
	nr_amarre serial not null,
	cuota int not null
);
Create table Patron(
	dni varchar primary key,
	nombre varchar not null,
	apellidos varchar not null,
	domicilio varchar not null,
	fech_nac date not null
);
Create table Salidas(
	id serial primary key,
	fecha date not null,
	hora time not null,
	destino varchar not null,
	dni_patron varchar not null references Patron(dni),
	matricula_barco varchar not null references Barco(matricula)
)