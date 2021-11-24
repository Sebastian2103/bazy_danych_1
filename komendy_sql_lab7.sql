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