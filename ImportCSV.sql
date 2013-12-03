-- creazione tabella dai file  
-- http://dati.comune.bologna.it/node/607
DROP TABLE PRESENZE_VOTAZIONI;
create table PRESENZE_VOTAZIONI(Progressivo text, 
Nominativo text, 
Data text,
Gruppo text, 
Presenza text, 
Votazioni integer,
Percentuale integer);
-- importazione dati da file 'elenco_eletti.csv'
.separator ","
.import anagrafe_eletti/presenze_e_votazioni/cleaned/Presenze_Votazioni.csv PRESENZE_VOTAZIONI

-- creazione tabella dai file  
-- http://dati.comune.bologna.it/node/XXX
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
.import anagrafe_eletti/delibere_e_odg_consiglio_comunale/cleaned/Delibere_OdG.csv DELIBERE_ODG

-- creazione tabella dal file 'Elenco delle Elette e degli Eletti 2013 (Versione 2)' 
-- http://dati.comune.bologna.it/node/606
-- DROP TABLE ELENCO_ELETTI;
-- CREATE TABLE ELENCO_ELETTI(progressivo text, 
-- cognome text, 
-- nome text, 
-- data_nascita text,
-- comune_nascita text,
-- stato text,
-- carica text,
-- quartiere text,
-- note text);
-- importazione dati da file 'elenco_eletti.csv'
-- .separator ","
-- .import elenco_eletti.csv ELENCO_ELETTI