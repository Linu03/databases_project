-- 10.3(A) Să se creeze o pagină APEX pentru Vizualizare companii (toate companiile din baza de date).

select * from tCompanie

-- 10.3(B) Să se creeze o pagină APEX pentru Vizualizare mașini (toate mașinile din baza de date)

select * from tMasina

-- 10.4(A) Să se creeze o pagină APEX pentru Vizualizare curse șofer, unde se vor vedea toate cursele
--efectuate de un șofer (pagină vizualizare ierarhii tSofer-tCursa).

SELECT 
    s.sid,
    s.nume AS Nume_Sofer,
    c.nrmat AS Numar_Matricol_al_Masinii,
    c.datac AS Data_Cursei,
    c.numecl AS Nume_Client
FROM 
    tSofer s
JOIN 
    tCursa c ON c.sid = s.sid
WHERE 
    c.sid = :PXX_SID_SOFER
ORDER BY s.sid

-- 10.4(B) Să se creeze o pagină APEX pentru Adăugare cursă.
-- La aceasta cerinta am folosit logica din apex.oracle

select * from tCursa order by sid;

-- 10.5(A) Să se creeze o pagină APEX pentru Vizualizare istoric curse în care se vor afișa cursele unui
-- client identificat prin nume (numele va fi citit printr-un parametru tip PageItem)

select 
        c.datac as Data_cursei,
        c.distkm as Distanta_km,
        c.nrmat as Numar_Matricol,
        c.sid as Id_Sofer_Cursa
from tCursa c
where c.numeCl = :PXX_NUME_CL

-- 10.5(B) Să se creeze o pagină APEX pentru Vizualizare șoferi companie unde se vor vedea șoferi
-- angajați la o companie, identificată prin codCo (codCo va fi citit printr-un parametru tip PageItem )

SELECT 
    s.nume AS Nume_Sofer,
    s.cnp AS CNP_Sofer,
    c.nume AS Nume_Companie,
    c.adresa AS Adresa_Companie,
    c.tel AS Telefon_Companie
FROM 
    tsofer s
JOIN 
    tcompanie c ON s.codCo = c.codCo
WHERE 
    c.codCo = :PXX_CODCO


-- 10.6(A) Să se creeze o pagină APEX pentru Raportare statistică șofer – se va afișa o listă cu: nume,
-- codCo, SID, număr mașini conduse, distanța totală și numărul total de curse efectuate.

	SELECT 
    s.nume AS Nume_Sofer,
    s.codCo AS Cod_Companie,
    s.sid AS SID,
    COUNT(DISTINCT c.nrmat) AS Numar_Masini_Conduse,
    SUM(c.distkm) AS Distanta_Totala_km,
    COUNT(*) AS Numar_Curse_Efectuate
FROM 
    tSofer s
JOIN 
    tCursa c ON s.sid = c.sid
GROUP BY 
    s.nume, s.codCo, s.sid
ORDER BY 
    s.nume
	
	
-- 10.6(B) Să se creeze o pagină APEX pentru Raportare statistică mașină – se va afișa o listă cu
-- mașinile (număr de înmatriculare și serie), numărul total de kilometri parcurși în curse, numărul de
-- șoferi care au condus-o, precum și data primei și ultimei călătorii.

SELECT 
    m.NRMAT AS "Număr de Înmatriculare",
    m.serie AS "Serie",
    SUM(c.DISTKM) AS "Kilometri Totali Parcurși",
    COUNT(DISTINCT c.SID) AS "Număr de Șoferi",
    MIN(c.DATAC) AS "Data Primei Călătorii",
    MAX(c.DATAC) AS "Data Ultimei Călătorii"
FROM 
    tmasina m
JOIN 
    tcursa c ON m.NRMAT = c.NRMAT
GROUP BY 
    m.NRMAT, m.NRMAT, m.serie
ORDER BY 
    m.NRMAT