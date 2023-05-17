#Ovo je komentar

drop database if exists salon;
create database salon;
use salon;


create table frizerskisalon(
	sifra int not null primary key auto_increment,
    naziv varchar(50) not null, 
    radnovrijeme decimal(5,5),
    lokacija varchar(50) not null,
    kontakt int not null, 
    vlasnik varchar(50),
    datumosnivanja varchar(50),
    djelatnik int not null
);
create table djelatnik(
	sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50) 
);

create table osoba(
	sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(50)
);

create table korisnik(
	sifra int not null primary key auto_increment,
    osoba int not null,
    spol varchar(50),
    kontakt int not null,
    usluga int not null
);

create table usluga(
	sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena_djeca decimal(18,2) not null,
    cijena_odrasli decimal(18,2) not null
);

alter table frizerskisalon add foreign key (djelatnik)
references djelatnik(sifra);

alter table djelatnik add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (usluga)
references usluga(sifra);










	



