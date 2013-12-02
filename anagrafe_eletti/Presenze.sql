-- Questo file e' quello che popola il file presenze.csv

-- presenze suddivise per mese
.headers on
.mode csv
.output 2011-09.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2011-09" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2011-10.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2011-10" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2011-11.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2011-11" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2011-12.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2011-12" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-01.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-01" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-02.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-02" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-03.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-03" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-04.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-04" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-05.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-05" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-06.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-06" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-07.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-07" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-08.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-08" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-09.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-09" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-10.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-10" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-11.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-11" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2012-12.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2012-12" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-01.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-01" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-02.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-02" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-03.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-03" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-04.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-04" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-05.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-05" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-06.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-06" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-07.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-07" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-08.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-08" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-09.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-09" 
GROUP BY Progressivo ORDER BY Progressivo ASC;

.headers on
.mode csv
.output 2013-10.csv
select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%Y-%m",Data) == "2013-10" 
GROUP BY Progressivo ORDER BY Progressivo ASC;