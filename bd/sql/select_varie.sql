SELECT Nome, Cognome, Nazionalita, CF as Codice_Fiscale
FROM Utenti
WHERE (Nazionalita = "IT" OR Nazionalita = "UK") AND Cognome = "Rossi"
ORDER BY Cognome, Nome;

SELECT distinct Utenti.Cognome, Utenti.Nome, Nazionalita, Lido.Nome, Giorno, Gestore.Nome as Gestore
FROM Utenti, Prenotazioni, Lido, Gestore
WHERE Utenti.CF = Prenotazioni.Utente AND Prenotazioni.Ombrellone_Lido = Lido.PIVA
AND (Lido.Gestore = "CFG1" OR Lido.Gestore = "CFG1")
ORDER BY Nazionalita desc;

SELECT Cognome, Nome, Nazionalita, Giorno
FROM Utenti LEFT JOIN Prenotazioni ON Utenti.CF = Prenotazioni.Utente
WHERE giorno IS NULL;


SELECT Utenti.Nome, Utenti.Cognome, Utenti.Nazionalita
FROM Utenti, Prenotazioni, Lido, Gestore
WHERE Utenti.CF = Prenotazioni.Utente AND Prenotazioni.Ombrellone_Lido = Lido.PIVA AND Lido.Gestore = Gestore.CF
AND Gestore.Cognome = "Patrizio";

SELECT *
FROM Lido l, Gestore g
WHERE l.Gestore = g.CF;