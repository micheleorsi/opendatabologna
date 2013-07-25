create table PRESENZE_E_VOTAZIONI(Progressivo integer, Nominativo text, Data text, GruppoPolitico text, Presenza text, NumVotazioni integer, PercentualePresenza integer);
.separator ","
.import cleaned/presenze_e_votazioni.csv PRESENZE_E_VOTAZIONI