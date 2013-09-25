create table PRESENZE_E_VOTAZIONI(Progressivo integer, Nominativo text, Data text, GruppoPolitico text, Presenza text, NumVotazioni integer);
.separator ","
.import cleaned/presenze_e_votazioni_19_08_2013.csv PRESENZE_E_VOTAZIONI