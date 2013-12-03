-- ordini del giorno suddivisi per mese
.headers on
.mode csv
.output odg.csv
select E.Nome, E.Cognome, Consigliere, COUNT(DataConsiglio) AS ODG_APPROVATI, strftime("%Y-%m",DataConsiglio) AS PERIOD
from DELIBERE_ODG AS D join ELENCO_ELETTI AS E on D.Consigliere == E.Progressivo
WHERE Tipologia = "OdG"
GROUP BY PERIOD,Consigliere ORDER BY PERIOD,Consigliere ASC;

-- numero ODG approvati per consigliere
select E.Nome, E.Cognome, COUNT(D.Consigliere) AS ODG_APPROVATI
from DELIBERE_ODG AS D join ELENCO_ELETTI AS E on D.Consigliere == E.Progressivo
WHERE Tipologia = "OdG"
GROUP BY D.Consigliere
ORDER BY ODG_APPROVATI DESC;