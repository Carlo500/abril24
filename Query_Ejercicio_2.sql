Create table Zoo(
	nombre varchar primary Key,
	pais varchar not null,
	ciudad varchar not null,
	tamaño int not null,
	presupuesto int not null
);
Create table Especies(
	nombre_cientifico varchar primary key,
	nombre_vulgar varchar not null,
	familia varchar not null,
	peligro_extincion bool not null
);
Create table Animales(
	id serial primary key,
	sexo varchar not null,
	pais_origen varchar not null,
	continente varchar not null,
	especie varchar not null references Especies(nombre_cientifico),
	año_nacimiento date not null,
	zoo_estancia varchar not null references Zoo(nombre)
)