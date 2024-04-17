PROIECT BD-P10: Firme de taxi.



Să se implementeze o aplicație APEX pentru gestiunea unei firme de taxi. În acest scop se va crea o
bază de date cu următoarele tabele:

![image](https://github.com/Linu03/databases_project/assets/163161692/bfbac2c6-b12d-4d6a-9b3c-f08bb3ec443b)


10.1 Să se implementeze în APEX tabelele bazei de date împreună cu constrângerile necesare
pentru păstrarea integrității bazei de date (chei primare, chei externe, constrângere valori). Se va crea
un fișier text TaxiSchema.sql care să cuprindă instrucțiunile SQL DDL necesare (ca și în exemplul ”BD
Port Schema - exemple curs” de pe cv.upt.ro). Fișierul va face parte din documentația proiectului de
încărcat pe campus.


10.2 Să se adauge în tabelele bazei de date folosind INSERT din SQL: 6 compani, 12 șoferi, 8
mașini, 32 curse. Se va crea un fișier text TaxiDate.sql care să cuprindă instrucțiunile SQL DML
necesare (ca și în exemplul ”BD Port Date - exemple curs” de pe cv.upt.ro). Fișierul va face parte din
documentația proiectului de încărcat pe campus.

Aplicația Apex va cuprinde:
10.3(A) Să se creeze o pagină APEX pentru Vizualizare companii (toate companiile din baza de date).

10.4(A) Să se creeze o pagină APEX pentru Vizualizare curse șofer, unde se vor vedea toate cursele

efectuate de un șofer (pagină vizualizare ierarhii tSofer-tCursa – vezi Curs 6 BD pagina 24).

10.5(A) Să se creeze o pagină APEX pentru Vizualizare istoric curse în care se vor afișa cursele unui
client identificat prin nume (numele va fi citit printr-un parametru tip PageItem - vezi Curs 6 BD pagina
27)

10.6(A) Să se creeze o pagină APEX pentru Raportare statistică șofer – se va afișa o listă cu: nume,
codCo, SID, număr mașini conduse, distanța totală și numărul total de curse efectuate.




10.3(B) Să se creeze o pagină APEX pentru Vizualizare mașini (toate mașinile din baza de date).

10.4(B) Să se creeze o pagină APEX pentru Adăugare cursă.

10.5(B) Să se creeze o pagină APEX pentru Vizualizare șoferi companie unde se vor vedea șoferi
angajați la o companie, identificată prin codCo (codCo va fi citit printr-un parametru tip PageItem - vezi
Curs 6 BD pagina 27)

10.6(B) Să se creeze o pagină APEX pentru Raportare statistică mașină – se va afișa o listă cu
mașinile (număr de înmatriculare și serie), numărul total de kilometri parcurși în curse, numărul de
șoferi care au condus-o, precum și data primei și ultimei călătorii.
