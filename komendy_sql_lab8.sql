create TABLE pracownik(id int PRIMARY KEY AUTO_INCREMENT,imie varchar(50) NOT NULL,nazwisko varchar(100),data_urodzenia date,stanowisko SET('sprzedawca','magazynier','ksiegowa'));

Insert into pracownik VALUES
(default,'Marek','Pajak','1998-04-21','1'),
(default,'Hania','Milosz','1991-01-25','3'),
(default,'Mariusz','Kowalski','1982-07-22','2');
 Create Table dzial(id int PRIMARY KEY AUTO_INCREMENT,nazwa varchar(255));
 INSERT INTO  dzial values
 (default,'sprzedaz'),
 (default,'ksiegowosc'),
 (default,'magazyn');
 Alter table pracownik
alter stanowisko set DEFAULT 'sprzedawca';

Alter Table pracownik 
Add column pensja float(5,2);

Update pracownik set pensja='2012,99' where imie='Marek';
Update pracownik set pensja='2112,99' where imie='Hania';
Update pracownik set pensja='2412,99' where imie='Mariusz';

Alter Table dzial change id id_dzialu int PRIMARY KEY AUTO_INCREMENT ;
alter table dzial change nazwa nazwa_dzialu varchar(255);
alter table pracownik change id id_pracownika int;

Delete from pracownik where id_pracownika='1';

select p.imie, p.nazwisko, d.nazwa from pracownik p inner join dzial d on p.dzial=d.id_dzialu;

select t.nazwa_towaru, k.nazwa_kategori, sm.ilosc from towar t inner join kategoria k on t.kategoria=k.id_kategori inner join stan_magazynowy sm on t.id_towaru=sm.towar order by sm.ilosc desc;
--zadanie 8
SELECT p.zamowienie,p.towar,p.ilosc,p.cena, z.data_zamowienia from pozycja_zamowienia p 
inner join zamowienie z on p.zamowienie=z.status_zamowienia 
order by (data_zamowienia) limit 5;
--zadanie 9
Select z.id_zamowienia,z.data_zamowienia,z.numer_zamowienia,z.status_zamowienia from zamowienie z
inner join status_zamowienia sz on z.status_zamowienia=sz.id_statusu_zamowienia
where sz.nazwa_statusu_zamowienia NOT LIKE "zrealizowane";
--zadanie 10
Select ulica,miejscowosc,kod from adres_klienta where kod NOT LIKE '__-___';
--lab3
--zadanie1
Select imie,nazwisko,YEAR(data_urodzenia) from pracownik;
Select d.nazwa, count(p.id_pracownika) from pracownik 
inner join
--zadanie2
select t.nazwa_towaru, k.nazwa_kategori, sm.ilosc from towar t inner join kategoria k on t.kategoria=k.id_kategori inner join stan_magazynowy sm on t.id_towaru=sm.towar order by sm.ilosc desc;

--zadanie3
select * from zamowienie z inner join status_zamowienia sz on z.status_zamowienia=sz.id_statusu_zamowienia where nazwa_statusu_zamowienia='anulowane';

--zadanie4
select pelna_nazwa from klient k inner join adres_klienta ak on k.id_klienta=ak.klient inner join typ_adresu ta on ak.typ_adresu=ta.id_typu where ak.miejscowosc ='Olsztyn' and ta.nazwa='podstawowy';

--zadanie5
select jm.nazwa from jednostka_miary jm left join stan_magazynowy sm on jm.id_jednostki=sm.jm where sm.jm is null;

--zadanie6
select z.numer_zamowienia, t.nazwa_towaru, pz.ilosc, pz.cena from zamowienie z inner join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie inner join towar t on pz.towar=t.id_towaru where year(data_zamowienia) = 2018;

--zadanie7

create table towary_full_info select t.nazwa_towaru, t.cena_zakupu, k.nazwa_kategori, sm.ilosc, jm.nazwa; 