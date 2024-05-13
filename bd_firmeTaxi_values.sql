-- data for 6 companii
INSERT INTO tCompanie VALUES ('C001', 'Fast Taxi', 'Str. Libertatii 10, Bucharest', '0310001111');
INSERT INTO tCompanie VALUES ('C002', 'Reliable Rides', 'Str. Revolutiei 22, Cluj', '0310002222');
INSERT INTO tCompanie VALUES ('C003', 'Quick Cabs', 'Str. Pacii 5, Iasi', '0310003333');
INSERT INTO tCompanie VALUES ('C004', 'City Taxi', 'Bd. Unirii 17, Timisoara', '0310004444');
INSERT INTO tCompanie VALUES ('C005', 'Express Transport', 'Str. Principala 56, Constanta', '0310005555');
INSERT INTO tCompanie VALUES ('C006', 'Safe Travels', 'Str. Muncii 88, Brasov', '0310006666');

-- data for 12 soferi
INSERT INTO tSofer VALUES ('S001', '2900508005051', 'Ion Popescu', 'C001');
INSERT INTO tSofer VALUES ('S002', '2900508005052', 'Gheorghe Ionescu', 'C001');
INSERT INTO tSofer VALUES ('S003', '2900508005053', 'Vasile Dumitru', 'C002');
INSERT INTO tSofer VALUES ('S004', '2900508005054', 'Mihai Popa', 'C002');
INSERT INTO tSofer VALUES ('S005', '2900508005055', 'Alexandru Stan', 'C003');
INSERT INTO tSofer VALUES ('S006', '2900508005056', 'Florin Dobre', 'C003');
INSERT INTO tSofer VALUES ('S007', '2900508005057', 'Doru Mihai', 'C004');
INSERT INTO tSofer VALUES ('S008', '2900508005058', 'Bogdan Enescu', 'C004');
INSERT INTO tSofer VALUES ('S009', '2900508005059', 'Lucian Mareş', 'C005');
INSERT INTO tSofer VALUES ('S010', '2900508005060', 'Sorin Balan', 'C005');
INSERT INTO tSofer VALUES ('S011', '2900508005061', 'Dan Nistor', 'C006');
INSERT INTO tSofer VALUES ('S012', '2900508005062', 'Catalin Sorescu', 'C006');

-- data for 8 masini
INSERT INTO tMasina VALUES ('B001TM', 'Dacia Logan', 'DL1234XYZ');
INSERT INTO tMasina VALUES ('B002TM', 'Skoda Octavia', 'SO5678XYZ');
INSERT INTO tMasina VALUES ('B003TM', 'Volkswagen Golf', 'VG1234XYZ');
INSERT INTO tMasina VALUES ('B004TM', 'Ford Focus', 'FF5678XYZ');
INSERT INTO tMasina VALUES ('B005TM', 'Renault Clio', 'RC1234XYZ');
INSERT INTO tMasina VALUES ('B006TM', 'Toyota Corolla', 'TC5678XYZ');
INSERT INTO tMasina VALUES ('B007TM', 'Peugeot 308', 'P308XYZ');
INSERT INTO tMasina VALUES ('B008TM', 'Opel Astra', 'OA1234XYZ');

-- data for 32 curse
INSERT INTO tCursa VALUES ('Marius Iorga', TO_DATE('2024-04-23 08:00', 'YYYY-MM-DD HH24:MI'), 5.5, 'B001TM', 'S001');
INSERT INTO tCursa VALUES ('Laura Popescu', TO_DATE('2024-04-23 09:00', 'YYYY-MM-DD HH24:MI'), 10.2, 'B002TM', 'S002');
INSERT INTO tCursa VALUES ('Adrian Manea', TO_DATE('2024-04-23 10:00', 'YYYY-MM-DD HH24:MI'), 8.8, 'B003TM', 'S003');
INSERT INTO tCursa VALUES ('Ana Vasilache', TO_DATE('2024-04-23 11:00', 'YYYY-MM-DD HH24:MI'), 15.0, 'B004TM', 'S004');
INSERT INTO tCursa VALUES ('Ovidiu Negrean', TO_DATE('2024-04-23 12:00', 'YYYY-MM-DD HH24:MI'), 7.3, 'B005TM', 'S005');
INSERT INTO tCursa VALUES ('Elena Rotaru', TO_DATE('2024-04-23 13:00', 'YYYY-MM-DD HH24:MI'), 4.5, 'B006TM', 'S006');
INSERT INTO tCursa VALUES ('Cristian Istrate', TO_DATE('2024-04-23 14:00', 'YYYY-MM-DD HH24:MI'), 9.7, 'B007TM', 'S007');
INSERT INTO tCursa VALUES ('Diana Oltean', TO_DATE('2024-04-23 15:00', 'YYYY-MM-DD HH24:MI'), 13.4, 'B008TM', 'S008');

INSERT INTO tCursa VALUES ('Stefan Moraru', TO_DATE('2024-04-23 16:00', 'YYYY-MM-DD HH24:MI'), 6.2, 'B001TM', 'S008');
INSERT INTO tCursa VALUES ('Ioana Cristea', TO_DATE('2024-04-23 16:30', 'YYYY-MM-DD HH24:MI'), 11.4, 'B002TM', 'S007');
INSERT INTO tCursa VALUES ('Alina Mare', TO_DATE('2024-04-23 17:00', 'YYYY-MM-DD HH24:MI'), 8.5, 'B003TM', 'S006');
INSERT INTO tCursa VALUES ('Teodor Iliescu', TO_DATE('2024-04-23 17:30', 'YYYY-MM-DD HH24:MI'), 9.0, 'B004TM', 'S005');
INSERT INTO tCursa VALUES ('Raluca Vasilescu', TO_DATE('2024-04-23 18:00', 'YYYY-MM-DD HH24:MI'), 7.7, 'B005TM', 'S004');
INSERT INTO tCursa VALUES ('Mihnea Rotaru', TO_DATE('2024-04-23 18:30', 'YYYY-MM-DD HH24:MI'), 5.3, 'B006TM', 'S003');
INSERT INTO tCursa VALUES ('Larisa Dobrescu', TO_DATE('2024-04-23 19:00', 'YYYY-MM-DD HH24:MI'), 4.8, 'B007TM', 'S002');
INSERT INTO tCursa VALUES ('Bogdan Stoica', TO_DATE('2024-04-23 19:30', 'YYYY-MM-DD HH24:MI'), 10.6, 'B008TM', 'S001');

INSERT INTO tCursa VALUES ('Miruna Enache', TO_DATE('2024-04-24 08:00', 'YYYY-MM-DD HH24:MI'), 5.5, 'B001TM', 'S012');
INSERT INTO tCursa VALUES ('Dragos Mihai', TO_DATE('2024-04-24 08:30', 'YYYY-MM-DD HH24:MI'), 12.3, 'B002TM', 'S011');
INSERT INTO tCursa VALUES ('Livia Barbu', TO_DATE('2024-04-24 09:00', 'YYYY-MM-DD HH24:MI'), 9.1, 'B003TM', 'S010');
INSERT INTO tCursa VALUES ('Iulian Pop', TO_DATE('2024-04-24 09:30', 'YYYY-MM-DD HH24:MI'), 8.7, 'B004TM', 'S009');
INSERT INTO tCursa VALUES ('Camelia Ionescu', TO_DATE('2024-04-24 10:00', 'YYYY-MM-DD HH24:MI'), 6.6, 'B005TM', 'S008');
INSERT INTO tCursa VALUES ('Nicoleta Dumitrascu', TO_DATE('2024-04-24 10:30', 'YYYY-MM-DD HH24:MI'), 11.2, 'B006TM', 'S007');
INSERT INTO tCursa VALUES ('Ciprian Tanase', TO_DATE('2024-04-24 11:00', 'YYYY-MM-DD HH24:MI'), 8.3, 'B007TM', 'S006');
INSERT INTO tCursa VALUES ('Violeta Stoian', TO_DATE('2024-04-24 11:30', 'YYYY-MM-DD HH24:MI'), 7.0, 'B008TM', 'S005');

INSERT INTO tCursa VALUES ('Radu Vasiliu', TO_DATE('2024-04-24 12:00', 'YYYY-MM-DD HH24:MI'), 5.4, 'B001TM', 'S004');
INSERT INTO tCursa VALUES ('Monica Gheorghe', TO_DATE('2024-04-24 12:30', 'YYYY-MM-DD HH24:MI'), 13.1, 'B002TM', 'S003');
INSERT INTO tCursa VALUES ('Sorina Frunza', TO_DATE('2024-04-24 13:00', 'YYYY-MM-DD HH24:MI'), 7.9, 'B003TM', 'S002');
INSERT INTO tCursa VALUES ('Ionut Craciun', TO_DATE('2024-04-24 13:30', 'YYYY-MM-DD HH24:MI'), 14.5, 'B004TM', 'S001');
INSERT INTO tCursa VALUES ('Diana Alecu', TO_DATE('2024-04-24 14:00', 'YYYY-MM-DD HH24:MI'), 6.7, 'B005TM', 'S012');
INSERT INTO tCursa VALUES ('Octavian Balan', TO_DATE('2024-04-24 14:30', 'YYYY-MM-DD HH24:MI'), 5.8, 'B006TM', 'S011');
INSERT INTO tCursa VALUES ('Eugen Dobroiu', TO_DATE('2024-04-24 15:00', 'YYYY-MM-DD HH24:MI'), 8.2, 'B007TM', 'S010');
INSERT INTO tCursa VALUES ('Felicia Marin', TO_DATE('2024-04-24 15:30', 'YYYY-MM-DD HH24:MI'), 12.5, 'B008TM', 'S009');