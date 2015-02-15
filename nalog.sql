/*Izlistati sve vozace zajedno za identifikacijskim brojem i tipom vozila koja su koristili
Izlistati sve tramvajske linije - polazna stanica i krajnja stanica
Izlistati sve trolejbuske linije - polazna stanica i krajnja stanica
Izlistati sve autobuske linije - - polazna stanica i krajnja stanica
Izlistati sve stanice sa kojih polaze autobusi i trolejbusi
Izlistati sve stanice sa kojih polaze autobusi i tramvaji*/

Select vozac.ime as NAME, vozilo.id_vozila as BojVozila, vozilo.tip as tip from vozac
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join vozilo on info.id_vozila = vozilo.id_vozila;


Select saobracajne_linije.polazna_st, saobracajne_linije.krajnja_st from vozilo 
inner join info on vozilo.id_vozila = info.id_vozila
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where vozilo.tip = 'tramvaj';


Select saobracajne_linije.polazna_st, saobracajne_linije.krajnja_st from vozilo 
inner join info on vozilo.id_vozila = info.id_vozila
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where vozilo.tip = 'trolejbus';


Select saobracajne_linije.polazna_st, saobracajne_linije.krajnja_st from vozilo 
inner join info on vozilo.id_vozila = info.id_vozila
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where vozilo.tip = 'autobus';


Select saobracajne_linije.polazna_st as STANICA from vozilo 
inner join info on vozilo.id_vozila = info.id_vozila
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where vozilo.tip = 'autobus' or vozilo.tip = 'trolejbus' ;

Select saobracajne_linije.polazna_st as STANICA from vozilo 
inner join info on vozilo.id_vozila = info.id_vozila
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where vozilo.tip = 'autobus' or vozilo.tip = 'tramvaj' ;

/* 
Napisati query koji ce vratiti prosjek godina vozaca
Query koji ce ispisati prosjek godina rada u firmi za vozace
Napisati ime i prezime najstarijeg vozaca
Za odredenu stanicu napisati sve linije koje polaze sa te stanice, 
ispis sortirati po frekvenciji voznje na liniji
Za odredenu liniju ispisati sve vozace koji rade na toj liniji
Za odredeno vozilo ispisati sve vozace koji su ga koristili
Imena vozaca koji voze na liniji sa rednim brojem 1 i liniji sa rednim brojem 20
Izlistati vozace koji rade u prvoj smijeni
Izlistati vozace koji rade u prvoj smjeni a voze autobuse.
Izlistati sve polazne stanice za odredenog vozaca
*/

Select avg(godine) as PROSJEKgodina from vozac;

Select  max(godine), vozac.ime, vozac.prezime from vozac;

Select saobracajne_linije.id_linije as frekvencije_voznje from saobracajne_linije
 where saobracajne_linije.polazna_st = 'Bascarsija' 
 order by saobracajne_linije.vremenski_interval;

Select vozac.ime as VozacNaLiniji from vozac
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where saobracajne_linije.id_linije = 1;


Select vozac.ime AS VozacTramvaja from vozac 
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join vozilo on info.id_vozila = vozilo.id_vozila
where vozilo.tip = 'tramvaj';

Select vozac.ime AS VozacLinije1i20 from vozac 
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where saobracajne_linije.id_linije = 1 or saobracajne_linije.id_linije = 20 ;

Select vozac.ime AS PrvaSmjena from vozac 
inner join smjene on vozac.id_vozaca = smjene.id_vozaca
where smjene.smjena = 'prva'; 
 
Select vozac.ime AS PrvaSmjenaAUtobusa from vozac 
inner join smjene on vozac.id_vozaca = smjene.id_vozaca
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join vozilo on info.id_vozila = vozilo.id_vozila
where smjene.smjena = 'prva' and vozilo.tip = 'autobus'; 

Select saobracajne_linije.polazna_st as POLAZNEstanice from vozac
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije 
where vozac.id_vozaca = 1; 
