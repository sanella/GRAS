. headers on

create table vozac(
	id_vozaca integer primary key autoincrement,
	ime varchar(15),
	prezime varchar(15),
	godine smallint,
	godina_zaposlenja smallint
);

create table smjene(
id_vozaca integer,
smjena varchar(6),
foreign key (id_vozaca) references vozac,
	primary key (id_vozaca)
);

create table saobracajne_linije(
id_linije smallint primary key,
polazna_st varchar(20),
krajnja_st varchar(20),
vrijeme_I_voznje smallint,
vremenski_interval smallint
);

create table vozilo (
id_vozila integer primary key autoincrement,
tip varchar(15)
);

create table info(
id_vozaca smallint,
id_vozila smallint,
id_linije smallint,
foreign key (id_vozaca) references vozac,
foreign key (id_vozila) references vozilo,
foreign key (id_linije) references saobracajne_linije, 
primary key (id_vozaca, id_vozila, id_linije)
 );

