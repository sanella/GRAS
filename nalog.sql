/*Izlistati sve vozace zajedno za identifikacijskim brojem i tipom vozila koja su koristili
Izlistati sve tramvajske linije - polazna stanica i krajnja stanica
Izlistati sve trolejbuske linije - polazna stanica i krajnja stanica
Izlistati sve autobuske linije - - polazna stanica i krajnja stanica
Izlistati sve stanice sa kojih polaze autobusi i trolejbusi*/

Select vozac.ime as NAME, vozilo.id_vozila as BojVozila, vozilo.tip as tip from vozac
inner join info on vozac.id_vozaca = info.id_vozaca 
inner join vozilo on info.id_vozila = vozilo.id_vozila;


Select saobracajne_linije.polazna_st, saobracajne_linije.krajnja_st from vozilo 
inner join info on vozilo.id_vozila = info.id_vozila
inner join saobracajne_linije on info.id_linije = saobracajne_linije.id_linije
where vozilo.tip = 'tramvaj';

