-- presenze suddivise per mese 
select Progressivo,  COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%w",Data) == "1" AND strftime("%Y-%m",Data) == "2011-09" 
GROUP BY Progressivo, strftime("%Y-%m",Data) ORDER BY Nominativo ASC;

-- presenze suddivise per mese
select Progressivo,  COUNT(Presenza) AS TOTALE_PRESENZE, strftime("%Y-%m",Data) AS PERIOD 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" 
GROUP BY PERIOD,Progressivo ORDER BY PERIOD,Progressivo ASC;

-- presenze totali 
select Progressivo,  COUNT(Presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%w",Data) == "1" 
GROUP BY Progressivo ORDER BY TOTALE_PRESENZE DESC;

-- presenze totali in %
select Progressivo, ROUND(COUNT(Presenza)/83.0*100,2) AS PRESENZA
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%w",Data) == "1" 
GROUP BY Progressivo ORDER BY PRESENZA DESC;

-- votazioni totali in %
select Progressivo, ROUND(SUM(Votazioni)/916.0*100,2) AS VOTAZIONI
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%w",Data) == "1" 
GROUP BY Progressivo ORDER BY VOTAZIONI DESC;

-- diff % fra presenze e votazioni
select Progressivo, gruppo_politico, ROUND(COUNT(Presenza)/83.0*100,2)-ROUND(SUM(Votazioni)/916.0*100,2) AS DIFF
from PRESENZE_VOTAZIONI 
WHERE Presenza = "P" AND strftime("%w",Data) == "1" 
GROUP BY Progressivo ORDER BY DIFF DESC;

-- votazioni
select Progressivo, SUM(Votazioni) AS VOTAZIONI
from PRESENZE_VOTAZIONI
WHERE Presenza = "P" AND strftime("%w",Data) == "1" 
GROUP BY Progressivo ORDER BY VOTAZIONI DESC;

-- ordini del giorno suddivisi per mese
--select Progressivo, COUNT(Presenza) AS TOTALE_PRESENZE, strftime("%Y-%m",Data) AS PERIOD 
--from PRESENZE_VOTAZIONI 
--WHERE Presenza = "P" 
--GROUP BY PERIOD,Progressivo ORDER BY PERIOD,Progressivo ASC;