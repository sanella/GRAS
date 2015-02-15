insert into vozac (id_vozaca, ime, prezime, godine, godina_zaposlenja)
	VALUES (1, 'Hamid', 'Ceric' , 48, 1989 );

insert into vozac (id_vozaca, ime, prezime, godine, godina_zaposlenja)
	VALUES (2, 'Ramiz', 'Hodzic' , 37, 1995 );

insert into vozac (id_vozaca, ime, prezime, godine, godina_zaposlenja)
	VALUES (3, 'Meho', 'Rizvanbegovic' , 51, 2001 );

insert into vozac (id_vozaca, ime, prezime, godine, godina_zaposlenja)
	VALUES (4, 'Fadil', 'Basic' , 43, 2011 );

insert into vozac (id_vozaca, ime, prezime, godine, godina_zaposlenja)
	VALUES (5, 'Mujo', 'Colis' , 39, 1998 );	


insert into smjene( id_vozaca, smjena) 
	VALUES (1, 'prva');

insert into smjene( id_vozaca, smjena) 
	VALUES (2, 'prva');

insert into smjene( id_vozaca, smjena) 
	VALUES (3, 'prva');

insert into smjene( id_vozaca, smjena) 
	VALUES (4, 'druga');

insert into smjene( id_vozaca, smjena) 
	VALUES (5, 'druga');


insert into saobracajne_linije(id_linije, polazna_st, krajnja_st, vrijeme_I_voznje, vremenski_interval)
	VALUES (1, 'Bascarsija', 'Ilidza', 50, 5 );
	
insert into saobracajne_linije(id_linije, polazna_st, krajnja_st, vrijeme_I_voznje, vremenski_interval)
	VALUES (2, 'Dobrinja', 'TrgAustrije', 45, 6 );

insert into saobracajne_linije(id_linije, polazna_st, krajnja_st, vrijeme_I_voznje, vremenski_interval)
	VALUES (3, 'Nedzarici', 'Bascarsija', 35, 10 );

insert into saobracajne_linije(id_linije, polazna_st, krajnja_st, vrijeme_I_voznje, vremenski_interval)
	VALUES (4, 'Skenderija', 'Mojmilo', 30, 20 );

insert into saobracajne_linije(id_linije, polazna_st, krajnja_st, vrijeme_I_voznje, vremenski_interval)
	VALUES (5, 'Skenderija', 'Otoka', 30, 15 );

insert into saobracajne_linije(id_linije, polazna_st, krajnja_st, vrijeme_I_voznje, vremenski_interval)
	VALUES (6, 'Bascarsija', 'CVila', 25, 25);


insert into vozilo(id_vozila, tip) VALUES (1, 'autobus');
insert into vozilo(id_vozila, tip) VALUES (2, 'tramvaj');
insert into vozilo(id_vozila, tip) VALUES (3, 'tramvaj');
insert into vozilo(id_vozila, tip) VALUES (4, 'trolejbus');
insert into vozilo(id_vozila, tip) VALUES (5, 'trolejbus');	

insert into info(id_vozaca, id_vozila, id_linije) 
VALUES (1, 1, 1); 
insert into info(id_vozaca, id_vozila, id_linije) 
VALUES (2, 2, 2); 
insert into info(id_vozaca, id_vozila, id_linije) 
VALUES (3, 3, 3); 
insert into info(id_vozaca, id_vozila, id_linije) 
VALUES (4, 4, 4);
insert into info(id_vozaca, id_vozila, id_linije) 
VALUES (5, 5, 5); 
insert into info(id_vozaca, id_vozila, id_linije) 
VALUES (2 , 5, 6);  