--Joın
-- hangi ürün hangi kategoride
SELECT products.product_name, categories.category_name FROM products
INNER JOIN categories ON products.category_id = categories.category_id;

--hangi sipariş hangi kargo şirketi ile ne zaman gönderilmiştir
--orders - shippers
--tablo - properties - constraints
SELECT o.order_id, s.company_name, o.order_date FROM orders o
INNER JOIN shippers s ON o.ship_via = s.shipper_id;

--hangi siparişi hani çalışan almış hangi müşteri vermiştir
--orders-employees- customers
SELECT * FROM orders o --employees'in lefti
INNER JOIN employees e ON o.employee_id = e.employee_id-- orders'ın rightı customers'ın lefti
INNER JOIN customers c ON o.customer_id = c.customer_id;-- employees rightı

--left join 
-- çalışanın adı, müşterilerden aldığı siparişler ve tarihleri listele
SELECT e.first_name, order_id, order_date FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id;

--right join
SELECT e.first_name, order_id, order_date FROM employees e
RIGHT JOIN orders o ON e.employee_id = o.employee_id;

--full outer join
SELECT c.contact_name, o.order_id FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;

--Group by
--her grubun toplam sipariş miktarını listele
SELECT product_id, SUM(quantity) FROM order_details
GROUP BY product_id;

--
SELECT category_name, COUNT(*) FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
GROUP BY category_name;

--hangi ülkeye ne kadarlık satış yapılmış
SELECT o.ship_country, SUM(od.unit_price*od.quantity) AS total_cost FROM orders o
INNER JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.ship_country ORDER BY total_cost DESC;

--Having
--filtreleme
--görev ve işlev bakımından where'e benzer
--toplam işlem miktarı 1300 adetten fazla olan ürün kodlaını görelim
SELECT product_id, SUM(quantity) FROM order_details
GROUP BY product_id
HAVING SUM(quantity)> 1300;

--stok sayısı 20 den fazla - toplam ürün sayısı da 1 den fazla olan kategorileri
SELECT category_id, units_in_stock, COUNT(20)
FROM products WHERE units_in_stock>20
GROUP BY category_id, units_in_stock HAVING COUNT(*)>1;

--250 adetten fazla satılan ürünleri göster

SELECT p.product_name,  SUM(od.quantity)
FROM order_details od
INNER JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name HAVING SUM(od.quantity)>250
ORDER BY SUM(od.quantity) DESC;















