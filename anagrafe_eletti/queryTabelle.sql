-- presenze suddivise per mese 
select progressivo, nominativo, COUNT(presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE presenza = "P" AND strftime("%w",data) == "1" AND strftime("%Y-%m",data) == "2011-09" 
GROUP BY progressivo, strftime("%Y-%m",data) ORDER BY nominativo ASC;

-- presenze suddivise per mese
select progressivo, nominativo, COUNT(presenza) AS TOTALE_PRESENZE, strftime("%Y-%m",data) AS PERIOD 
from PRESENZE_VOTAZIONI 
WHERE presenza = "P" 
GROUP BY PERIOD,progressivo ORDER BY PERIOD ASC;

-- presenze totali 
select progressivo, nominativo, COUNT(presenza) AS TOTALE_PRESENZE 
from PRESENZE_VOTAZIONI 
WHERE presenza = "P" AND strftime("%w",data) == "1" 
GROUP BY progressivo ORDER BY TOTALE_PRESENZE DESC;

-- presenze totali in %
select nominativo, ROUND(COUNT(presenza)/83.0*100,2) AS PRESENZA
from PRESENZE_VOTAZIONI 
WHERE presenza = "P" AND strftime("%w",data) == "1" 
GROUP BY progressivo ORDER BY PRESENZA DESC;

-- votazioni totali in %
select nominativo, ROUND(SUM(num_votazioni)/916.0*100,2) AS VOTAZIONI
from PRESENZE_VOTAZIONI 
WHERE presenza = "P" AND strftime("%w",data) == "1" 
GROUP BY progressivo ORDER BY VOTAZIONI DESC;

-- diff % fra presenze e votazioni
select nominativo, gruppo_politico, ROUND(COUNT(presenza)/83.0*100,2)-ROUND(SUM(num_votazioni)/916.0*100,2) AS DIFF
from PRESENZE_VOTAZIONI 
WHERE presenza = "P" AND strftime("%w",data) == "1" 
GROUP BY progressivo ORDER BY DIFF DESC;

-- votazioni
select nominativo, SUM(num_votazioni) AS VOTAZIONI
from PRESENZE_VOTAZIONI
WHERE presenza = "P" AND strftime("%w",data) == "1" 
GROUP BY progressivo ORDER BY VOTAZIONI DESC;