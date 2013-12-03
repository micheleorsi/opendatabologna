-- creazione tabella dai file  
-- http://dati.comune.bologna.it/node/607
DROP TABLE PRESENZE_VOTAZIONI;
create table PRESENZE_VOTAZIONI(Progressivo text, 
Data text, 
Presenza text, 
Votazioni integer,
Percentuale integer);
-- importazione dati da file 'elenco_eletti.csv'
.separator ","
.import anagrafe_eletti/presenze_e_votazioni_607/cleaned/Presenze_Votazioni.csv PRESENZE_VOTAZIONI

-- creazione tabella dai file  
-- http://dati.comune.bologna.it/node/601
DROP TABLE DELIBERE_ODG;
create table DELIBERE_ODG(Delibera text, 
Tipologia text, 
DataConsiglio text,
Oggetto text, 
NumPG text, 
AnnoPG integer,
DataPubblicazione text,
Altri text,
Testo text,
Consigliere text);
-- importazione dati da file 'elenco_eletti.csv'
.separator ","
.import anagrafe_eletti/delibere_e_odg_consiglio_comunale_601/cleaned/Delibere_OdG.csv DELIBERE_ODG

-- creazione tabella dal file 'Elenco delle Elette e degli Eletti' 
-- http://dati.comune.bologna.it/node/606
DROP TABLE ELENCO_ELETTI;
CREATE TABLE ELENCO_ELETTI(Progressivo text, 
Cognome text, 
Nome text, 
DataNascita text,
ComuneNascita text,
Carica text,
Quartiere text);
-- importazione dati da file 'elenco_eletti.csv'
.separator ","
.import anagrafe_eletti/elenco_eletti_606/cleaned/Elenco_Eletti.csv ELENCO_ELETTI