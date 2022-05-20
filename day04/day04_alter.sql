/*=============================== ALTER TABLE =========================================
    
    ALTER TABLE  tabloda ADD, MODIFY, veya DROP/DELETE COLUMNS islemleri icin kullanılır.
    ALTER TABLE ifadesi tablolari yeniden isimlendirmek (RENAME) icin de kullanılır.
   
=======================================================================================*/

use demodb;
CREATE TABLE personel
(
	id int PRIMARY KEY, 
	isim VARCHAR(50), 
	sehir VARCHAR(50), 
	maas int, 
	sirket VARCHAR(20)
);


INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda'); 
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO personel VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');
    
select * from personel;
   
-- SORU1: personel tablosuna ulke_isim adinda ve default degeri 'Turkiye' olan yeni bir sutun ekleyiniz.
alter table personel
add ulke_ismi varchar(20) default 'Türkiye';

-- SORU2: personel tablosuna cinsiyet Varchar(20) ve yas int seklinde yeni sutunlar ekleyiniz.
alter table personel add (cinsiyet varchar(20), yas int);  
    
-- SORU3: personel tablosundan sirket sutununu siliniz.
alter table personel drop column sirket;
 
-- SORU4: personel tablosundaki ulke_isim sutununun adini ulke_adi olarak degistiriniz.
alter table isciler rename column ulke_ismi to ulke_adi;

-- SORU5: personel tablosunun adini isciler olarak degistiriniz.
alter table personel rename to isciler;

select * from isciler;

-- SORU6: isciler tablosundaki ulke_adi sutununa NOT NULL kisitlamasi ekleyiniz ve veri tipini VARCHAR(30) olarak değiştiriniz. 
alter table isciler modify ulke_adi varchar(30) not null;

alter table isciler add constraint check (maas >=3000);

INSERT INTO isciler VALUES(456715056, 'Veli Sahin', 'Ankara', 3000, 'Mercedes');
INSERT INTO isciler VALUES(456715057, 'Veli Sahin', 'Ankara', 2000, 'Mercedes');
INSERT INTO isciler VALUES(456715037, 'Veli Sahin', 'Ankara', 5000, 'Mercedes');
