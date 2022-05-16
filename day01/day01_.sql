use deneme2;
#birden fazla database varsa "use" komutu ile kulllanacagimiz database'i seciyoruz

create table student(
id varchar(4),
st_name varchar(30),
age int
);

#Veri Girisi  ---ALTER---
insert into student value('1001','Ali Can','26');
insert into student value('1002','Veli Can','36');
insert into student value('1003','Ayse Can','46');
insert into student value('1004','Derya Can','56');

select * from student;


#PARCALI VERI GIRISI
insert into student (st_name,age) values('Murat Can','35');

drop table student;


create table ogrenciler(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

insert into ogrenciler value('120','Ali Can','Ankara','75');
insert into ogrenciler value('121','Veli Mert','Trabzon','85');
insert into ogrenciler value('122','Ayse Tan','Bursa','65');
insert into ogrenciler value('123','Derya Soylu','Istanbul','75');
insert into ogrenciler value('124','Mert Kale','Denizli','90');

select * from ogrenciler;

#SORU01: Sinav notu 80'den buyuk olan ogrenci bilgileri listeleyiniz
select * from ogrenciler where sinav_notu>80;

#SORU02: Adresi Ankara olan ogrencilerin isim ve adreslerini listeleyiniz
select isim,adres from ogrenciler where adres='Ankara';

#SORU03: Id'si 124 olan ogrencinin bilgilerini listeleyiniz
select * from ogrenciler where id=124;


-- SELECT - BETWEEN 

create table personel(
id char(4),
isim varchar(30),
maas int
);

insert into personel values('1001','Ali Can','70000');      
insert into personel values('1002','Veli Mert','85000');
insert into personel values('1003','Ayse Tan','65000');
insert into personel values('1004','Derya Soylu','95000');
insert into personel values('1005','Yavuz Bal','80000');
insert into personel values('1006','Sena Beyaz','100000');
insert into personel values('1007', 'Yildirim Deniz', 120000);
select * from personel;

-- BETWEEN belirttigimiz 2 veri arasindaki bilgileri listeler

#SORU04: ID'si 1002 ile 1005 arasindaki  personel bilgileri listeleyeniz.

select * from personel where id between 1002 and 1005;

/*
AND(ve) : Belirtilen sartlardan her ikisi de gerceklesiyorsa

select * from matematik where sinav>50 AND sinav2>50
Her iki sinavdan da 50 den yuksek alanlari listeler

OR(veya): Belirtilen sartlardan en az biri gerceklesiyorsa

select * from matematik where sinav>50 OR sinav2>50
Birinci sinav veya ikinci sinavdan 50 den yuksek alanlari listeler
*/


#SORU05:  Derya SOylu ve Yavuz Bal arasindaki personel bilgilerini listeleyiniz
select * from personel where isim between 'Derya Soylu' and 'Yavuz Bal';

#SORU06: Maasi 70000 ve ismi Sena Beyaz olan personeli listeleyiniz
select * from personel where maas = 7000 or isim = 'Sena Beyaz';

/*
IN: Birden fazla veriyi tek komut ile listeleme imkani sagliyor
*/

#SORU07: ID'si 1001,1002 ve 1004 olan personel bilgilerini listeleyiniz
-- 1. YOL
select * from personel where id=1001 or id = 1002 or id =1004;

-- 2. YOL
select * from personel where id in (1001,1002,1004);

#SORU08: Maasi 70000, 100000 olan personeli listeleyiniz

select * from personel where maas in(70000,100000);

/*
SELECT - LIKE
LIKE: Sorgulama yaparken belirli patternleri kullanabilmemizi saglar

SELECT sutun1, sutun2, ...
FROM tablo_adi
WHERE sutun LIKE pattern

PATTERN icin
% ->
_ ->

*/

#SORU09: Ismi A harfi ile baslayan personeli listeleyiniz
select * from personel where isim like 'A%';

#SORU10 Ismi N harfi ile biten personelin listeleyiniz
select * from personel where isim like "%N";

#SORU11: Isminin 2. harfi E olan personeli listeleyiniz
select * from personel where isim like '_E%';

#SORU12: Isminin ilk harfinde E olup diger harflerinde Y olan personeli listeleyin
select * from personel where isim like '_E%_Y%';


