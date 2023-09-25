drop database if exists Viking_Nutrition;
create database Viking_Nutrition;
use Viking_Nutrition;

create table Utenti (
ID int primary key auto_increment,
username varchar(30) not null,
email varchar(50) not null,
psw varchar(20) not null,
tipo int not null
);

create table Anagrafica(
ID_utente int,
nome char(30) not null,
cognome char(15) not null,
tel varchar(40) not null,
indirizzo char(50) not null,
citta char(50) not null,
CAP char(6) not null,
foreign key (ID_utente) references Utenti(ID)
);

create table Ordini(
ID int primary key auto_increment,
data date not null,
status char(20) not null
);

create table Spedizioni(
ID int primary key auto_increment,
data date not null,
ID_Tracking int not null
);

create table Categorie(
ID int primary key auto_increment,
nome char(20)
);

create table Prodotti(
ID int primary key auto_increment,
nome char(60) not null,
prezzo double not null,
descrizione varchar(500) not null,
ID_categoria int,
foreign key (ID_categoria) references Categorie(ID)
);

create table Promo(
codice varchar(30) primary key,
sconto int not null,
nome varchar(40) not null,
ID_categoria int,
foreign key (ID_categoria) references Categorie(ID)
);

create table Composizione(
ID_Ordine int not null,
ID_Prodotto int not null,
primary key (ID_Ordine, ID_Prodotto),
foreign key (ID_Ordine) references Ordini(ID),
foreign key (ID_Prodotto) references Prodotti(ID)
);