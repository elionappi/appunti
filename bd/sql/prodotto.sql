drop database if exists unisa1;
create database unisa1;
use unisa1;

create table Produttore(
PIVA char(11) primary key,
Ragione_Sociale char(80) not null
);

create table Prodotto(
Nome char(40),
Produttore char(11), #si riferisce alla chiave primaria di Produttore (PIVA)
Prezzo decimal not null,
Descrizione varchar(250), #con varchar utilizziamo solo i caratteri occupati !ATTENZIONE! (fa molte più operazioni il DB)
primary key(Nome,Produttore),
foreign key(Produttore) references Produttore(PIVA) on delete cascade #con quest'ultima cancella i prodotti legati al Produttore in automatico
);

create table Trasformatore(
PIVA char(11) primary key,
Ragione_Sociale char(80) not null
);

create table Distributore(
PIVA char(11) primary key,
Ragione_Sociale char(80) not null,
Paese char(15) not null
);

create table Vendita(
Trasformatore char(11),
P_Nome char(40),
P_PIVA char(11),
Distributore char(11), #si riferisce alla chiave primaria di Distributore (PIVA)
Giorno date,
Quantita int not null,
primary key(Trasformatore,P_Nome,P_PIVA,Distributore,Giorno),
foreign key(Trasformatore) references Trasformatore(PIVA),
foreign key(P_Nome, P_PIVA) references Prodotto(Nome, Produttore),
foreign key(Distributore) references Distributore(PIVA)
);