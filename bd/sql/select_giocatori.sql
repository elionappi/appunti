select * from Squadra;
SELECT * FROM Giocatori;

UPDATE Squadra set n_trofei=36 where id=4;

SELECT count(*) from Giocatori;
SELECT count(*)-count(Cognome) from Giocatori;

SELECT g.Nome, g.Cognome, s.Nome
From Giocatori g, Squadra s
WHERE g.Squadra=s.id
ORDER BY g.Cognome;

SELECT count(*), s.Nome
FROM Giocatori g, Squadra s
WHERE g.Squadra=s.ID
GROUP BY s.ID, s.Nome;