/*
actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
*/
select FIRST_NAME from ACTOR
UNION
SELECT FIRST_NAME FROM CUSTOMER

/*
actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
*/
select FIRST_NAME from ACTOR
INTERSECT
(SELECT FIRST_NAME FROM CUSTOMER)

/*
actor ve customer tablolarında bulunan first_name sütunları için 
ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
*/
select FIRST_NAME from ACTOR
EXCEPT
SELECT FIRST_NAME FROM CUSTOMER

/*
İlk 3 sorguyu tekrar eden veriler için de yapalım.
*/
select FIRST_NAME from ACTOR
UNION ALL
SELECT FIRST_NAME FROM CUSTOMER

select FIRST_NAME from ACTOR
INTERSECT ALL
(SELECT FIRST_NAME FROM CUSTOMER)

select FIRST_NAME from ACTOR
EXCEPT ALL
SELECT FIRST_NAME FROM CUSTOMER