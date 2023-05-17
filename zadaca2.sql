drop database if exists zadatak_3;
create database zadatak_3;
use zadatak_3;

create table sticenik(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	vrsta varchar(50),
	prostor int
);

create table djelatnik(
	sifra int not null primary key auto_increment,
	ime  varchar(50),
	prezime varchar(50),
	iban varchar(50),
	email varchar(50),
	telefon int,
	sticenik int
);

create table prostor(
	sifra int not null primary key auto_increment,
	broj_prostora int,
	velicina_prostora int
);

alter table sticenik  add foreign key (prostor) references prostor(sifra);

alter table djelatnik add foreign key (sticenik) references sticenik(sifra);

--c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\maxba\Documents\GitHub\desktop-tutorial\zadaca2.sql