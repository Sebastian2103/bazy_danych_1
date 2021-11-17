select rodzaj, avg(udzwig) from kreatura group by rodzaj;
select count(*) from kreatura;
select count(distinct rodzaj) from kreatura;

#min()
#sum()

ZADANIE 1

select rodzaj, avg(waga) from kreatura group by rodzaj limit 1;

select rodzaj, avg(waga),count(rodzaj) from kreatura group by rodzaj;

select rodzaj, avg(YEAR(dataUr)) from kreatura group by rodzaj;


ZADANIE 2

SELECT rodzaj, sum(waga) from  zasob group by rodzaj;

SELECT nazwa, avg(waga) from zasob where ilosc>'4' group by nazwa having sum(waga)>10;

SELECT count(distinct nazwa), rodzaj from zasob group by rodzaj having min(ilosc)>1;



 #złączanie tabel
 
 #select* from kreatura, ekwipunek #wszystko z tych dwóch tabel//
 
 zlaczanie wewnetrzene
 select * from kreatura, ekwipunek where kreatura.idKreatury=ekwipunek.idEkwipunku;
 
 #zlaczanie wewnetrzene ale z inner join
 select * from kreatura
 INNER JOIN kreatura
 ON kreatura.idKreatury=ekwipunek.idEkwipunku;
 
#z uzyciem aliasu dla nazwy tabeli
  select * from kreatura
 INNER JOIN ekwipunek
 ON k.idKreatury=e.idEkwipunku;
 
 SELECT  nazwa,sum(ilosc) from kreatura k, ekwipunek e
 where k.idKreatury=e.idKreatury group by k.nazwa having sum(ilosc)!5;
 
ZADANIE 3
 
 select nazwa, ilosc from kreatura
 INNER JOIN ekwipunek
 ON kreatura.idKreatury=ekwipunek.idEkwipunku
 
 SELECT kreatura.nazwa, zasob.nazwa FROM kreatura, zasob, ekwipunek where 
 kreatura.idKreatury=ekwipunek.idKreatury AND ekwipunek.idZasobu=zasob.idZasobu order by kreatura.nazwa;
 
 SELECT k.nazwa, k.idKreatury, e.idKreatury from kreatura k left join ekwipunek e on k.idKreatury=e.idEkwipunku where e.idKreatury is null; 
 
 SELECT  nazwa,sum(ilosc) from kreatura k, ekwipunek e
 where k.idKreatury=e.idKreatury group by k.nazwa having sum(ilosc)!5;
 
 ZADANIE 4
 select dataUr,nazwa,rodzaj,idZasobu from kreatura NATURAL JOIN ekwipunek where
 YEAR(dataUr) BETWEEN 1670 AND 1679 and where rodzaj='wiking';
 

 