ZADANIE 1
--1
create table uczestnicy as select * from wikingowie.uczesnicy;
create table etapy_wyprawy as select * from wikingowie.etapy_wyprawy;
create table sektor as select * from wikingowie.sektor;
create table wyprawa as select * from wikingowie.wyprawa;
--2
Select nazwa from kreatura k 
left join uczestnicy u on k.idKreatury=u.id_uczestnika
group by k.nazwa having count(id_uczestnika)=0;
--3
select w.id_wyprawy, w.nazwa, sum(e.ilosc) from wyprawa w
inner join uczestnicy u on w.id_wyprawy=u.id_wyprawy
inner join ekwipunek e on e.idKreatury=u.id_uczestnika 
group by w.id_wyprawy;

ZADANIE 2

--1
select w.nazwa, count(u.id_uczestnika), group_concat(k.nazwa) from kreatura k
left join uczestnicy u on k.idKreatury=u.id_uczestnika
left join wyprawa w on u.id_wyprawy=w.id_wyprawy 
where w.nazwa is not null 
group by w.nazwa; 
--2
select e.idEtapu, s.nazwa, k.nazwa from etapy_wyprawy e
inner join sektor s on e.sektor=e.id_sektora
inner join wyprawa w on e.idWyprawy=w.id_wyprawy
inner join kreatura k on w.kierownik=k.idKreatury
order by w.data_rozpoczecia, e.kolejnosc;
-----------------------------------------------------
select k.nazwa,ifnull(e.ilosc,"brak ekwipunku")
from kreatura k left join ekwipunek e
on k.idKreatury=e.idKreatury;

ZADANIE 3
--1
SELECT s.nazwa, count(e.sektor) from etapy_wyprawy e
right join sektor s on e.sektor=s.id_sektora
group by s.nazwa;
--2
select k.nazwa, IF(count(u.id_uczestnika)>0,"Brał udział w wyprawie","Nie brał udziału w wyprawie") from kreatura k
left join uczestnicy u on k.idKreatury=u.id_uczestnika
group by k.nazwa;
--------------------------------------------
ZADANIE 4
--1
SELECT w.nazwa, SUM(length(e.dziennik)) as SumaLiczbyZnakow
from wyprawa w
left join etapy_wyprawy e ON
w.id_wyprawy=e.idWyprawy
group by w.nazwa having sum(length(e.dziennik))<'400';

--2
select u.id_wyprawy, sum(e.ilosc*z.waga)'suma wagi',count(distinct u.id_uczestnika)'ilsoc uczestnikow', sum(e.ilosc*z.waga)/count(distinct u.id_uczestnika)'srednia wagi'
from uczestnicy u
left join ekwipunek e on u.id_uczestnika=e.idKreatury
left join zasob z on z.idZasobu=e.idZasobu
group by u.id_wyprawy;

select * from wyprawy where id_wyprawy=1;

select * from uczestnicy u
inner join ekwipunek e on u.id.uczestnika=e.idKreatury
where idWyprawy=1;



ZADANIE 5
SELECT w.nazwa,k.nazwa, DATEDIFF(w.data_rozpoczecia, k.dataUr) from wyprawa w 
inner join etapy_wyprawy ew on w.id_wyprawy=ew.idWyprawy
inner join sektor s on s.id_sektora=ew.sektor
inner join uczestnicy u on w.id_wyprawy=u.id_wyprawy
inner join kreatura k on k.idKreatury=u.id_uczestnika
where s.nazwa='Chatka dziadka';
