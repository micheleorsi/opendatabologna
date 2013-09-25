import sqlite3
import json

conn = sqlite3.connect('presenze_e_votazioni.db')

# presenze
nomi_presenze_totali = [''];
presenze_presenze_totali = [''];

# presenze totali
for row in conn.execute('select Nominativo,COUNT(Presenza) AS TOTALE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" GROUP BY Progressivo ORDER BY TOTALE DESC'):
    nomi_presenze_totali.append(row[0])
    presenze_presenze_totali.append(row[1])

nomi_presenze_question_time = [''];
presenze_presenze_question_time = [''];

# presenze consiglio giorno 5
for row in conn.execute('select Nominativo,COUNT(Presenza) AS TOTALE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) == "5" GROUP BY Progressivo ORDER BY TOTALE DESC'):
    nomi_presenze_question_time.append(row[0])
    presenze_presenze_question_time.append(row[1])

nomi_presenze_consiglio_ordinario = [''];
presenze_presenze_consiglio_ordinario = [''];

# presenze consiglio giorno 1
for row in conn.execute('select Nominativo,COUNT(Presenza) AS TOTALE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) == "1" GROUP BY Progressivo ORDER BY TOTALE DESC'):
    nomi_presenze_consiglio_ordinario.append(row[0])
    presenze_presenze_consiglio_ordinario.append(row[1])
    
nomi_presenze_consiglio_straordinario = [''];
presenze_presenze_consiglio_straordinario = [''];

# altre presenze
for row in conn.execute('select Nominativo,COUNT(Presenza) AS TOTALE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) != "1" AND strftime("%w",Data) != "5" GROUP BY Progressivo ORDER BY TOTALE DESC'):
    nomi_presenze_consiglio_straordinario.append(row[0])
    presenze_presenze_consiglio_straordinario.append(row[1])


# votazioni
nomi_votazioni_totali = [''];
presenze_votazioni_totali = [''];

# totale votazioni
for row in conn.execute('select Nominativo,SUM(NumVotazioni) AS TOTALE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" GROUP BY Progressivo ORDER BY TOTALE DESC'):
    nomi_votazioni_totali.append(row[0])
    presenze_votazioni_totali.append(row[1])


conn.close()

with open('html/data_presenze.js', 'w') as outfile:
    outfile.write('nomi_presenze_totali=')
    json.dump(nomi_presenze_totali, outfile)
    outfile.write(';\npresenze_presenze_totali=')
    json.dump(presenze_presenze_totali, outfile)
    
    outfile.write(';\n\nnomi_presenze_question_time=')
    json.dump(nomi_presenze_question_time, outfile)
    outfile.write(';\npresenze_presenze_question_time=')
    json.dump(presenze_presenze_question_time, outfile)
    
    outfile.write(';\n\nnomi_presenze_consiglio_ordinario=')
    json.dump(nomi_presenze_consiglio_ordinario, outfile)
    outfile.write(';\npresenze_presenze_consiglio_ordinario=')
    json.dump(presenze_presenze_consiglio_ordinario, outfile)
    
    outfile.write(';\n\nnomi_presenze_consiglio_straordinario=')
    json.dump(nomi_presenze_consiglio_straordinario, outfile)
    outfile.write(';\npresenze_presenze_consiglio_straordinario=')
    json.dump(presenze_presenze_consiglio_straordinario, outfile)
    outfile.write(';')
    
with open('html/data_votazioni.js', 'w') as outfile:
    outfile.write('nomi_votazioni_totali=')
    json.dump(nomi_votazioni_totali, outfile)
    outfile.write(';\npresenze_votazioni_totali=')
    json.dump(presenze_votazioni_totali, outfile)
