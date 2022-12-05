drop database if exists unisa1;
create database unisa1;
use unisa1;

create table Utenti(
CF char(11) primary key,
Nazionalita char(5) not null,
Cognome char(20) not null,
Nome char(20) not null
);

create table Gestore(
CF char(11) primary key,
Nome char(20) not null,
Cognome char(20) not null
);

create table Lido(
PIVA char(11) primary key,
Nome char(20) not null,
Gestore char(20) not null,
foreign key (Gestore) references Gestore(CF)
);

create table Ombrelloni(
Posto int,
Fila int,
Lido char(11),
primary key (Posto,Fila,Lido),
foreign key (Lido) references Lido(PIVA),
Costo decimal not null
);

create table Prenotazioni(
Utente char(11),

Ombrellone_posto int,
Ombrellone_fila int,
Ombrellone_lido char(11),

Giorno date not null,
primary key (Utente,Ombrellone_posto,Ombrellone_fila,Ombrellone_lido,Giorno),
foreign key (Utente) references Utenti(CF),
foreign key (Ombrellone_posto,Ombrellone_fila,Ombrellone_lido) references Ombrelloni(Posto,Fila,Lido)
);



insert into Utenti values
("CF1", "ITA","Ambrosio","Gennaro"),
("CF3","INR","Abdul","Mchalla"),
("CF4","ITA","Annunziata","Francesco"),
("CF5","UK","Cena","John");

insert into Gestore values
("CFG2","Pesce","Luca"),
("CFG3","Prisco","Dario"),
("CFG4","Prisco","Nicola"),
("CFG5","Rossi","Nunzio"),
("CFG1","Salvatore","Patrizio");

insert into Lido values
("PIVA1","Eucalipti","CFG1"),
("PIVA2","Nausica","CFG2"),
("PIVA3","Miramare","CFG3"),
("PIVA4","Bikini","CFG4"),
("PIVA5","La Vela","CFG5");


insert into Ombrelloni values
(1,1,"PIVA1",12),
(1,1,"PIVA2",12),
(1,1,"PIVA3",12),
(1,1,"PIVA4",12),
(1,1,"PIVA5",12);


Insert into Prenotazioni values 
("CF1",1,1,"PIVA1",'2022-11-18'),
("CF1",1,1,"PIVA1",'2022-11-16'),
("CF4",1,1,"PIVA3",'2022-11-17'),
("CF3",1,1,"PIVA4",'2022-11-19');



