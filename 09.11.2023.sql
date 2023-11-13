--EXIST NOT EXIST
SELECT company_name FROM suppliers
WHERE EXISTS (SELECT product_name FROM products 
			 WHERE suppliers.supplier_id=products.supplier_id
			 AND unit_price<20);

SELECT company_name FROM suppliers
WHERE NOT EXISTS (SELECT product_name FROM products 
			 WHERE suppliers.supplier_id=products.supplier_id
			 AND unit_price=20);
			 
--'03/05/1998' ile '04/05/1998' tarihleri arasında sipariş almış çalışanlar
SELECT * FROM employees e
WHERE EXISTS (SELECT * FROM orders o
			 WHERE o.employee_id = e.employee_id
			 AND o.order_date BETWEEN '03/05/1998' AND '04/05/1998')

--ALL - mantıksal operatörlerden biri
--tüm alt sorgu değerleri koşulu sağlıyorsa - true

SELECT product_name FROM products
WHERE product_id = ALL (SELECT product_id FROM order_details
					   WHERE quantity=10)
					   
--ANY
--alt sorgu değerlerinden herhangi biri koşulu sağlıyorsa - true
SELECT product_name FROM products
WHERE product_id = ANY (SELECT product_id FROM order_details
					   WHERE quantity>99)
					   












