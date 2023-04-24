--1.SORGU:actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
SELECT  first_name FROM actor UNION SELECT first_name FROM customer;
--2.SORGU:actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
SELECT first_name FROM actor INTERSECT SELECT first_name FROM customer;
--3.SORGU:actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT first_name FROM actor EXCEPT SELECT first_name FROM customer;
--4.SORGU:İlk 3 sorguyu tekrar eden veriler için de yapalım.
(select first_name from actor) union all (select first_name from customer);
(select first_name from actor) intersect all (select first_name from customer);
(select first_name from actor) except all (select first_name from customer);