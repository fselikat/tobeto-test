--SQL -> Structured Query Language
--Veri Sorgulama - Veri Manipülasyonu

--SELECT
--Select [kolon]/* from [tablo_adi] 
SELECT  * FROM products;
SELECT product_name, unit_price from products;

--WHERE
--den dan anlamı - filtreleme
SELECT * FROM products WHERE unit_price > 50;
SELECT * FROM products WHERE unit_price > 50 AND unit_price<100;
SELECT * FROM products WHERE unit_price BETWEEN 50 AND 100;
SELECT product_name, category_id, unit_price FROM products 
WHERE unit_price >= 50 OR category_id>5;
SELECT * FROM products 
WHERE product_name ='Chai' OR product_name='Chang' OR product_name='Ikura';
--IN()
--içerisine parametre olarak verilen n kadar veri ile ilgili
SELECT * FROM products WHERE product_name IN('Chai', 'Chang', 'Ikura');
SELECT * FROM products WHERE category_id IN(1,2,3);

--LIKE
--kalıba benzeyen ifadeleri getirir.
--% => ilgili metnin sol ya da sağında eklendiğinde
-- sağ veya sol için metinden sonra gelecek metni önemsemiyorum.
--İsminin içerisinde 't' harfi geçen tüm ürünleri
--lower => tüm harfleri küçültür
SELECT * FROM products WHERE product_name LIKE '%t%';

-- _ => karakter atlama olarak geçer
SELECT * FROM products WHERE product_name LIKE '__r%';

--BUILT-IN FUNCTIONS
--SUMMARY =>TOPLAMA
SELECT SUM(unit_price) FROM products;

--AVERAGE=> ORTALAMA
SELECT AVG(unit_price) FROM products;

--MAXIMUM => MAKS DEĞER DÖNER
SELECT MAX(unit_price) FROM products;

--MINIMUM => MİN DEĞER DÖNER
SELECT MIN(unit_price) FROM products;

--COUNT => ADET DÖNDÜRÜR
SELECT COUNT(*) FROM products WHERE unit_price>50;

--DISTINCT
--kaç farklı şehirden çalışanın var?
SELECT DISTINCT city FROM employees;

--SUB-QUERY - ALT SORGULAR
--Ortalamanın altında bir fiyata sahip olan ürünlerimin bilgisini istiyorum.

SELECT AVG(unit_price) FROM products;
SELECT * FROM products WHERE unit_price < 28.83;

SELECT * FROM products WHERE unit_price < (SELECT AVG(unit_price) FROM products);

--En pahalı ürünümün bilgilerini getirelim
SELECT MAX(unit_price) FROM products;
SELECT * FROM products WHERE unit_price =263.5;

SELECT * FROM products 
WHERE unit_price =(SELECT MAX(unit_price) FROM products);

--ORDER BY => sıralama
default olarak => küçükten büyüğe
--ASCENDING => ASC küçükten büuüğe a-z
--DESCENDING =>DESC büyükten küçüğe z-a

SELECT product_name, unit_price FROM products 
ORDER BY unit_price ASC;

SELECT product_name, unit_price FROM products 
ORDER BY unit_price DESC;

----
SELECT current_date AS "Bugünün tarihi";
SELECT date_part('year', current_date);

--GETDATE() => güncel tarih saat
--DATEDIFF('interval'(year), date1, date2);
--iki tarih arasındaki interval'e göre farkı verir












