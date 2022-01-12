--zadanie1
select d.nazwa, min(p.pensja), max(p.pensja), avg(p.pensja) from
pracownik p inner join dzial d on p.dzial=d.id_dzialu group by d.id_dzialu;
--zadanie2
select k.pelna_nazwa, z.numer_zamowienia, sum(poz.ilosc * poz.cena)
from klient k inner join zamowienie z on k.id_klienta=z.klient
inner join pozycja_zamowienia poz on poz.zamowienie=z.id_zamowienia
group by z.id_zamowienia order by 3 desc limit 10;
--zadanie3
select year(z.data_zamowienia), sum(poz.ilosc * poz.cena)
from zamowienie z
inner join pozycja_zamowienia poz on poz.zamowienie=z.id_zamowienia
where z.status_zamowienia=5
group by year(z.data_zamowienia) order by 2 desc;
--zadanie4
select sum(poz.ilosc * poz.cena) as wartosc_anulowanych
from zamowienie z
inner join pozycja_zamowienia poz on poz.zamowienie=z.id_zamowienia
where z.status_zamowienia=6;
--zadanie5
select ak.miejscowosc, count(distinct z.numer_zamowienia) as liczba_zamowien, sum(poz.ilosc * poz.cena) as wartosc
from klient k inner join zamowienie z on k.id_klienta=z.klient
inner join pozycja_zamowienia poz on poz.zamowienie=z.id_zamowienia
inner join adres_klienta ak on k.id_klienta=ak.klient
inner join typ_adresu ta on ak.typ_adresu=ta.id_typu
where ta.id_typu=1
group by ak.miejscowosc;
--zadanie6
select sum(poz.ilosc * poz.cena) - sum(poz.ilosc * t.cena_zakupu)
from zamowienie z
inner join pozycja_zamowienia poz on poz.zamowienie=z.id_zamowienia
inner join towar t on t.id_towaru=poz.towar
where z.status_zamowienia=5;
--zadanie7
select year(z.data_zamowienia), sum(poz.ilosc * poz.cena) - sum(poz.ilosc * t.cena_zakupu)
from zamowienie z
inner join pozycja_zamowienia poz on poz.zamowienie=z.id_zamowienia
inner join towar t on t.id_towaru=poz.towar
where z.status_zamowienia=5
group by year(z.data_zamowienia);
--zadanie8
select k.nazwa_kategori, sum(t.cena_zakupu * sm.ilosc)
from towar t
inner join stan_magazynowy sm on t.id_towaru=sm.towar
inner join kategoria k on k.id_kategori=t.kategoria
group by k.id_kategori;