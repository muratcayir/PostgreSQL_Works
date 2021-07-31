---------------AVG------------
--> Sayısal veri tiplerinden oluşan bir sütunun ortalama değerini bulmak  için kullanırız
--SELECT ROUND( AVG(length),4) FROM film

--------------SUM-------------
-->Sayısal veri tiplerinden oluşan bir sütunun toplam değerini bulmak için kullanırız
--SELECT SUM(length) FROM film

-------------MAX--------------
-->Sayısal veri tiplerinden oluşan bir sütunun en yüksek değerini bulmak için kullanırız
--SELECT MAX(replacement_cost) FROM film

-------------MIN-------------
-->Sayısal veri tiplerinden oluşan bir sütunun en düşük değerini bulmak için kullanırız
--SELECT MIN(replacement_cost) FROM film
--SELECT MAX(replacement_cost),MIN(replacement_cost),SUM(replacement_cost) FROM film
--SELECT MAX(length) FROM film WHERE rental_rate = 0.99;

------------ODEV-------------
/*1-film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT ROUND(AVG(rental_rate),4) FROM film

2-film tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?
SELECT COUNT(*) FROM film WHERE title LIKE 'C%'

3-film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) FROM film WHERE rental_rate = 0.99

4-film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT(replacement_cost)) FROM film WHERE length > 150 
*/
