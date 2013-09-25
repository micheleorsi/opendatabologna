import sqlite3
import json

conn = sqlite3.connect('presenze_e_votazioni.db')

date_carella = [''];
presenze_carella = [''];

date_errani = [''];
presenze_errani = [''];

date_aldrovandi = [''];
presenze_aldrovandi = [''];

date_merola = [''];
presenze_merola = [''];

# presenze suddivise per mese CARELLA DANIELE
for row in conn.execute('select strftime("%Y-%m",Data) AS DATA, COUNT(Presenza) AS TOTALE_PRESENZE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) == "1" AND NOMINATIVO == "CARELLA DANIELE" GROUP BY Progressivo, strftime("%Y-%m",Data) ORDER BY DATA ASC'):
    date_carella.append(row[0])
    presenze_carella.append(row[1])

# presenze suddivise per mese ERRANI FRANCESCO
for row in conn.execute('select strftime("%Y-%m",Data) AS DATA, COUNT(Presenza) AS TOTALE_PRESENZE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) == "1" AND NOMINATIVO == "ERRANI FRANCESCO" GROUP BY Progressivo, strftime("%Y-%m",Data) ORDER BY DATA ASC'):
    date_errani.append(row[0])
    presenze_errani.append(row[1])

# presenze suddivise per mese ALDROVANDI STEFANO
for row in conn.execute('select strftime("%Y-%m",Data) AS DATA, COUNT(Presenza) AS TOTALE_PRESENZE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) == "1" AND NOMINATIVO == "ALDROVANDI STEFANO" GROUP BY Progressivo, strftime("%Y-%m",Data) ORDER BY DATA ASC'):
    date_aldrovandi.append(row[0])
    presenze_aldrovandi.append(row[1])

# presenze suddivise per mese MEROLA VIRGINIO
for row in conn.execute('select strftime("%Y-%m",Data) AS DATA, COUNT(Presenza) AS TOTALE_PRESENZE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" AND strftime("%w",Data) == "1" AND NOMINATIVO == "MEROLA VIRGINIO" GROUP BY Progressivo, strftime("%Y-%m",Data) ORDER BY DATA ASC'):
    date_merola.append(row[0])
    presenze_merola.append(row[1])

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
    outfile.write('date_carella=');
    json.dump(date_carella, outfile);
    outfile.write(';\npresenze_carella=');
    json.dump(presenze_carella, outfile);

    outfile.write(';\n\ndate_errani=');
    json.dump(date_errani, outfile);
    outfile.write(';\npresenze_errani=');
    json.dump(presenze_errani, outfile);

    outfile.write(';\n\ndate_aldrovandi=');
    json.dump(date_aldrovandi, outfile);
    outfile.write(';\npresenze_aldrovandi=');
    json.dump(presenze_aldrovandi, outfile);

    outfile.write(';\n\ndate_merola=');
    json.dump(date_merola, outfile);
    outfile.write(';\npresenze_merola=');
    json.dump(presenze_merola, outfile);
    
    outfile.write(';\n\nnomi_presenze_totali=');
    json.dump(nomi_presenze_totali, outfile);
    outfile.write(';\npresenze_presenze_totali=');
    json.dump(presenze_presenze_totali, outfile);
    
    outfile.write(';\n\nnomi_presenze_question_time=');
    json.dump(nomi_presenze_question_time, outfile);
    outfile.write(';\npresenze_presenze_question_time=');
    json.dump(presenze_presenze_question_time, outfile);
    
    outfile.write(';\n\nnomi_presenze_consiglio_ordinario=');
    json.dump(nomi_presenze_consiglio_ordinario, outfile);
    outfile.write(';\npresenze_presenze_consiglio_ordinario=');
    json.dump(presenze_presenze_consiglio_ordinario, outfile);
    
    outfile.write(';\n\nnomi_presenze_consiglio_straordinario=');
    json.dump(nomi_presenze_consiglio_straordinario, outfile);
    outfile.write(';\npresenze_presenze_consiglio_straordinario=');
    json.dump(presenze_presenze_consiglio_straordinario, outfile);
    outfile.write(';');
    
with open('html/data_votazioni.js', 'w') as outfile:
    outfile.write('nomi_votazioni_totali=');
    json.dump(nomi_votazioni_totali, outfile);
    outfile.write(';\npresenze_votazioni_totali=');
    json.dump(presenze_votazioni_totali, outfile);
