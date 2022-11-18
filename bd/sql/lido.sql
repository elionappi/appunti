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
primary key (Utente,Ombrellone_posto,Ombrellone,fila,Ombrellone_lido,Giorno),
foreign key (Utente) references Utenti(CF),
foreign key (Ombrellone_posto,Ombrellone_fila,Ombrellone_lido) references Ombrelloni(Posto,Fila,Lido)
);




