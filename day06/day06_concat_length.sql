use demodb;

--  concat---
create table customer
(
musteri_no int,
ad VARCHAR(22),
soyad VARCHAR(25),
sehir varchar(45),
cinsiyet varchar(15),
puan int
);

INSERT INTO customer VALUES(111,'ebru', 'akar','denizli','kadin',78);
INSERT INTO customer VALUES(222,'ayse', 'kara','ankara','kadin',90);
INSERT INTO customer VALUES(333,'ali','gel','istanbul','erkek',66);
INSERT INTO customer VALUES(444, 'mehmet','okur','mus','erkek',98);

select * from customer;

select concat('Adiniz-soyadiniz : ', ad, ' ', soyad) ad_soyad from customer;

select concat(musteri_no, '. ', ad, ' ', soyad) ad_soyad, sehir, cinsiyet, puan from customer;



-- ****************************************  length-left-right (String functions) ********************************************************
-- tablodaki isimlerin ve soyisimlerin uzunluklari

select length(concat(ad,soyad)) uzunluk from customer;

-- tablodaki isimlerin ve soyisimlerin soldan ilk harfleri

select left(ad,1) as isim_ilkharf, left(soyad,1) as soyad_ilkharf from customer;

-- tablodaki isimlerin ve soyisimlerin sagdan ilk harfleri

select right(ad,1) as isim_sonharf, right(soyad,1) as soyad_sonharf from customer;

-- tablodaki isimlerin ve soyisimlerin soldan ilk harfleri (aralarinda nokta var ve birleşik yazilmişlar)



-- soru:  5 ve 5 karakterden büyük olan isimleri MORIS -> MRS şeklinde yazdırınız.
-- yani 1. , 3. ve 5. karakterleri alınız