--1.SORGU:film tablosundan 'K' karakteri ile başlayan en uzun ve replacement_cost u en düşük 4 filmi sıralayınız.
SELECT title ,length,replacement_cost  FROM film WHERE title LIKE 'K%' ORDER BY title DESC ,replacement_cost  ASC LIMIT 4;
--2.SORGU:film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
SELECT COUNT(*),rating FROM film GROUP BY rating ORDER BY COUNT DESC LIMIT 1;
--3.SORGU:customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
SELECT SUM(amount),customer.first_name,customer.last_name FROM payment JOIN customer ON customer.customer_id=payment.customer_id 
GROUP BY payment.customer_id,customer.first_name,customer.last_name ORDER BY SUM(amount) DESC LIMIT 1 ;
--4.SORGU:category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
SELECT COUNT(name),name FROM film_category 
JOIN category ON film_category.category_id=category.category_id
GROUP BY name 
ORDER BY COUNT(name) DESC;
--5.SORGU:film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%';
