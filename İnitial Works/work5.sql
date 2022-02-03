/*
----------------ORDER BY----------------
->ORDERBY Verileri belirli bir koşula göre sıralamak için kullanılır VE koşullardan sonra kullanılır
->ASC artan şekilde sıralarken DESC azalan bir şekilde sıralar
->Veriler default olarak ASC(artan) şeklinde sıralanır

SELECT title,rental_rate,length FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate ASC , length DESC;

SELECT * FROM film
WHERE rating = 'G'
ORDER BY length DESC;

----------------LIMIT AND OFFSET--------
->LIMIT kulllanılarak verilere sınırlama getirilir

SELECT *FROM film
WHERE rental_rate = 4.99
ORDER BY length
LIMIT 10

SELECT * FROM film
WHERE replacement_cost = 14.99 AND rental_rate = 0.99
ORDER BY length DESC
LIMIT 8

------------------OFFSET--------------
->OFFSET kullanılarak belirli sayıda verileri geçebiliriz

SELECT *FROM country
OFFSET 5
LIMIT 5


SELECT * FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2
LIMIT 1

------------------- ÖDEV (ORDER BY-LIMIT-OFFSET) --------------------------
1-film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.

SELECT *FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5

2-film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci 5 filmi sıralayınız.4

SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5 OFFSET 5

3-customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

SELECT *FROM customer HERE store_id = 1 ORDER BY last_name DESC LIMIT 4

*/
