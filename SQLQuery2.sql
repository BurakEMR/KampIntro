--select 
select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers -- bu kısmı çalıştırdığımızda fake bir tablo oluşur.--Eğer türkçe olarak adlarndırmak istersek buna alianspack deniyor.

select * from Customers where City = 'Berlin' -- Tüm müşterileri tüm kolonlarıyla getir ama şehri berlin olanları getir.

--case insensitive yani büyük küçük harf farketmez.
--where koşul ifadesi.
select * from Products where CategoryID = 1 or CategoryID = 3 --kategori ID'si 1 ya da 3 olanları getir. or:ya da demektir.

select * from Products where CategoryID = 1 and UnitPrice >= 10 --kategori ID'si 1 olan ve birim fiyatı 10 ve 10 dan büyük  olanları getir demek.

select * from Products where CategoryID = 1 order by UnitPrice desc -- kategori ID'si 1 olanlar ve birim fiyatı düşenleri sırala.

--select "order by" sırala demek. --asc:artan , desc:azalan komutu.

select count(*) Adet from Products where CategoryID = 2 --2 numaralı kategoride kaç ürün var.

select count (*) from Products  --Burada bütün products tablosunda kaç data var demek.

select CategoryID , count(*) from Products where UnitPrice>20 
group by CategoryID having count (*)<10--kategori ıd seç sırala , ürünlerden , kategori ıd ye göre grupla Unit price 20 den büyük kategori ıd içinde 10 ' dan küçük olanları sırala.


select products.ProductID , Products.ProductName ,Products.CategoryID , Products.UnitPrice , Categories.CategoryID
from Products inner join Categories  -- ürünler ve kategorilerin birleşiminden getirmek istediğimiz için "inner join" kullandık."inner join" sadece eşleşen kayıtları getirir.
on Products.CategoryID = Categories.CategoryID	--on: durumunda şartında demek.Yani neye göre birleştireceğimizin koşulunu "on" ile yazarız.
where Products.UnitPrice>10 -- fiyatı 10'dan büyük olanlar için onu kategorilerle join et ve bana getir demek.

--DTO Data Transformation Object
select * from Products p left join [Order Details] od --"left join" solda olup sağda olmayanları da getir demek.
on p.ProductID = od.ProductID
inner join Orders o --ikiden fazla tabloyu join etmek istersek bunu kullanırız.
on o.OrderID = od.OrderID
-- ürünlerdeki ürün ıd ile sipariş detaylı lsitedeki aynı verileri eşitle

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null -- "is null" ürün almamış kişileri görmemizi sağlar. --nulları sadece primary case'e uygularız.

