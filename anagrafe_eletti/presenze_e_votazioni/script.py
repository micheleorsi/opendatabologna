import sqlite3
import json

conn = sqlite3.connect('presenze_e_votazioni.db')

nomi_presenze_totali = [''];
presenze_presenze_totali = [''];

for row in conn.execute('select Nominativo,COUNT(Presenza) AS TOTALE from PRESENZE_E_VOTAZIONI WHERE Presenza = "P" GROUP BY Progressivo ORDER BY TOTALE DESC'):
    nomi_presenze_totali.append(row[0])
    presenze_presenze_totali.append(row[1])
conn.close()

with open('html/data.js', 'w') as outfile:
    outfile.write('nomi_presenze_totali=')
    json.dump(nomi_presenze_totali, outfile)
    outfile.write('\npresenze_presenze_totali=')
    json.dump(presenze_presenze_totali, outfile)

