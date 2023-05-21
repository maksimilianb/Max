-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\maxba\Documents\GitHub\desktop-tutorial\igraonica.sql

drop database if exists igraonica;
create database igraonica;
use igraonica;

create table dijete (
    sifra int not null primary key auto_increment,
    dijeteposjeta int,
    ime varchar (50),
    imeRoditelja varchar (50),
    prezime varchar (50),
    telefonRoditelja varchar (50) 
);

create table dijeteposjeta (
    dijete int,
    posjeta int
);

create table posjeta (
    sifra int not null primary key auto_increment,
    dijeteposjeta int,
    djelatnik int,
    datumVrijemeDolaska datetime,
    datumVrijemeOdlaska datetime,
    napomena varchar (50),
    djelatnik_sifra int
);

create table uslugaposjeta (
    sifra int not null primary key auto_increment,
    usluga int,
    posjeta int
);

create table usluga (
    sifra int not null primary key auto_increment,
    cijena decimal (10,2),
    jedinicaMjere varchar (50),
    kolicina decimal (10,2),
    naziv varchar (50)
);

create table operater (
    sifra int not null primary key auto_increment,
    email varchar (50),
    ime varchar (50),
    lozinka varchar (50),
    oib varchar (50),
    prezime varchar (50)
);

create table djelatnik (
    sifra int not null primary key auto_increment,
    dijeteposjeta int,
    posjeta int,
    iban varchar (50),
    ime varchar (50),
    oib varchar (50),
    prezime varchar (50),
    radnoMjesto varchar (50)
);

alter table dijeteposjeta add foreign key (dijete) references dijete (sifra);
alter table dijeteposjeta add foreign key (posjeta) references posjeta (sifra);
alter table posjeta add foreign key (djelatnik) references djelatnik (sifra);
alter table uslugaposjeta add foreign key (posjeta) references posjeta(sifra);
alter table uslugaposjeta add foreign key (usluga) references usluga(sifra);















