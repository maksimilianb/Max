# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\maxba\Documents\GitHub\desktop-tutorial\taxi.sql
drop database if exists taxi;
create database taxi;
use taxi;

create table taxi_sluzba (
    sifra int not null primary key auto_increment,
    vozilo int,
    vozac int,
    naziv varchar (50),
    kontakt int not null
);

create table vozilo (
    sifra int not null primary key auto_increment,
    vozac int,
    putnik int,
    iban varchar (50),
    reg_oznake varchar (50)
);

create table vozac (
    sifra int not null primary key auto_increment,
    putnik int,
    iban varchar (50),
    osoba int,
    voznja int
);

create table putnik (
    sifra int not null primary key auto_increment,
    osoba int,
    kontakt int not null,
    voznja int
);

create table voznja (
    sifra int not null primary key auto_increment,
    destinacija varchar (50) not null,
    cijena decimal (10,2) not null
);

create table osoba (
    sifra int not null primary key auto_increment,
    ime varchar (50),
    prezime varchar (50),
    oib varchar (50)
);

alter table taxi_sluzba add foreign key (vozilo) references vozilo(sifra);
alter table taxi_sluzba add foreign key (vozac) references vozac(sifra);
alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table vozilo add foreign key (putnik) references putnik(sifra);
alter table vozac add foreign key (putnik) references putnik(sifra);
alter table vozac add foreign key (osoba) references osoba(sifra);
alter table putnik add foreign key (osoba) references osoba(sifra);
alter table putnik add foreign key (voznja) references voznja(sifra);
alter table vozac add foreign key (voznja) references voznja(sifra);





