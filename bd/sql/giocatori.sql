drop database if exists unisa11;
create database unisa11;
use unisa11;

# Tifoso(ID, Cognome, Nome, Telefono*, Via, Citta) 

create TABLE Tifoso (
ID dec primary key,
Cognome char(40) not null,
Nome CHAR(40) not null,
Telefono char(20),
Via char(40) not null,
Citta char(20) not null
);

#Squadra (ID, nome, sede, capitale, n_trofei)
create table Squadra(
ID dec PRIMARY key,
nome char(80) not null,
sede char(40) not null,
capitale DEC not null,
n_trofei int not null
);

# Partita (ID, Competizione, SquadraA, SquadraB, data, citta, scoreA, scoreB)
create TABLE Partita (
ID dec primary key,
Competizione char(100) not null,
SquadraA DEC not null,
SquadraB DEC not null,
data date not null,
citta char(20) not null,
scoreA int not null,
scoreB int not null,
FOREIGN KEY (SquadraA) REFERENCES Squadra(ID),
FOREIGN KEY (SquadraB) references Squadra(ID)
);

# Prenotazione( Tifoso, Partita, prezzo)
create table Prenotazione (
Tifoso dec not null,
Partita dec not null,
prezzo dec not null,
Primary key( Tifoso, Partita),
FOREIGN KEY (Tifoso) REFERENCES Tifoso(ID),
FOREIGN KEY (Partita) REFERENCES Partita(ID)
);

#Giocatori (ID, Cognome*, Nome, Nazionalita, n_Maglia, stipendio, squadra)
create table Giocatori (
ID dec PRIMARY key ,
Cognome char(40),
Nome char(40) not null,
Nazionalita char(5) not null,
n_maglia int not null,
stipendio dec not null,
squadra dec not null,
FOREIGN KEY (squadra) REFERENCES Squadra(ID)
);

INSERT INTO Squadra values 
(1, "Napoli", "NA", 100000, 2),
(2, "Milan", "MI", 200000, 19),
(3, "Inter", "MI", 150000, 19),
(4, "Juventus", "TO", 300000, 39);

INSERT INTO Giocatori VALUEs
(1, null, "kim", "KR", 3, 5000000, 1),
(2, "Di Lorenzo", "Giovanni", "IT", 22, 3000000, 1),
(3, "Martinez", "Lautaro", "AR", 10, 4000000, 3);

















