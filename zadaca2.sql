drop database if exists zadace2;
create database zadace2;
use zadace2;

create table korisnik (
	sifra int not null primary key auto_increment,
	osoba int,
	usluga int
);

create table djelatnica(
	sifra int not null primary key auto_increment,
	iban varchar (50),
	email varchar (50),
	osoba int,
	korisnik int
);

create table osoba (
	sifra int not null primary key auto_increment,
	ime varchar (50),
	prezime varchar (50),
	telefon int
);

create table usluga(
	sifra int not null primary key auto_increment,
	naziv varchar (50),
	cijena decimal (10,2)
);

alter table djelatnica add foreign key (korisnik) references korisnik (sifra);

alter table djelatnica add foreign key (osoba) references osoba(sifra);

alter table korisnik add foreign key (usluga) references usluga(sifra);

alter table korisnik add foreign key (osoba) references osoba(sifra);

--c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\maxba\Documents\GitHub\desktop-tutorial\zadaca2.sql