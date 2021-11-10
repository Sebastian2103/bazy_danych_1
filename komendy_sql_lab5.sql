ZADANIE 1

Create table kreatura select * FROM wikingowie.kreatura;
Create table zasob select * FROM wikingowie.zasob;
Create table ekwipunek select * FROM wikingowie.ekwipunek;
SELECT * FROM zasob;
SELECT * FROM zasob where rodzaj='jedzenie';
SELECT idZasobu,ilosc from ekwipunek WHERE  idKreatury IN(1,2,5);

ZADANIE 2

SELECT nazwa from kreatura where rodzaj!='wiedzma' AND udzwig>='50';
SELECT nazwa from zasob where waga BETWEEN 2 AND 5;
SELECT nazwa from kreatura WHERE nazwa LIKE '%or%' AND udzwig BETWEEN 30 AND 70;

ZADANIE 3

SELECT * from zasob where MONTH(dataPozyskania) in (7,8); 
SELECT * from zasob where rodzaj is NOT NULL ORDER BY waga ASC;
SELECT * FROM kreatura order by dataUr ASC LIMIT 5;

ZADANIE 4

SELECT DISTINCT rodzaj from zasob ;
SELECT CONCAT(nazwa,' ',rodzaj) from kreatura where rodzaj Like 'wi%';
SELECT CONCAT(nazwa,' ',waga*ilosc) FROM zasob where YEAR(dataPozyskania) BETWEEN 2000 AND 2007; 

ZADANIE 5

1 

SELECT * from zasob where rodzaj is null;

SELECT DISTINCT rodzaj from zasob where nazwa like 'Ba%' or nazwa like '%os' order by nazwa ASC;