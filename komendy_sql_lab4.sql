ZADANIE 1

ALTER TABLE postac DROP FOREIGN KEY postac_ibfk_1;
ALTER TABLE postac DROP FOREIGN KEY walizka_ibfk_1;
ALTER TABLE postac DROP FOREIGN KEY walzika_ibfk_1;
ALTER TABLE postac DROP FOREIGN KEY walzika_ibfk_2;
ALTER TABLE postac MODIFY id_postaci int;
ALTER TABLE postac DROP PRIMARY KEY;
DELETE FROM postac where nazwa="Magda" and nazwa="Staszek";
 
 ZADANIE 2
 
 ALTER TABLE postac add [column] pesel char(11);
 #uzupenic kolumne "pesel" danymi.
 UPDATE postac SET pesel='12345678910'+id_postaci;
 ALTER TABLE postac ADD primary key('pesel');
 ALTER TABLE postac Modify rodzaj ENUM('wiking','ptak','kobieta','syrena');
 INSERT INTO postac VALUES
 ('9','GERTRUDA NIESZCZERA','4','1712-12-01','315','','','13245678901');
 
 ZADANIE 3
 
SELECT statek from postac where nazwa='Bjorn';
UPDATE postac set statek='gniew' Where nazwa LIKE '%a%';
UPDATE statek set max_ladownosc=max_ladownosc*0.7 WHERE data_wodowania >='1901-01-01' and data_wodowania<='2000-12-31';
ALTER TABLE postac ADD CHECK (wiek>=1000);
ALTER TABLE postac ADD CONSTRAINT chk_wiek CHECK (wiek>=1000);

ZADANIE 4

ALTER TABLE postac MODIFY rodzaj ENUM ('wiking','ptak','kobieta','syrena','wąż');
INSERT into postac VALUES
('10','LOKO','5','1711-12-01','316','','','32141212341');
CREATE TABLE marynarz like postac;
LUB
CREATE TABLE marynarz SELECT * from postac;
INSERT INTO marynarz select * from postac where statek is not null;

ZADANIE 5
UPDATE postac SET statek=NULL;
DELETE FROM postac WHERE pesel = '12345678917';
DELETE FROM statek WHERE nazwa='moc' AND nazwa='gniew';
DROP TABLE statek;
CREATE TABLE zwierz (id int AUTO_INCREMENT PRIMARY KEY,nazwa varchar(100),wiek int);
INSERT INTO zwierz VALUES
('','drozd','14');
