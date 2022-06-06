CREATE PROCEDURE city1
@name varchar(255)
 AS 
SELECT customers.Name , cities.Name , products.Name  FROM customers INNER JOIN orders
ON customers.ID = orders.Customer_id
INNER JOIN products
ON products.ID = orders.Product_id
INNER JOIN cities
ON cities.ID = customers.City_id
WHERE products.Name = @name
EXEC city1"iPhone X"


CREATE PROCEDURE price
@p varchar(255)
 AS 
SELECT customers.Name , products.Price , products.Name  FROM customers INNER JOIN orders
ON customers.ID = orders.Customer_id
INNER JOIN products
ON products.ID = orders.Product_id
WHERE customers.Name = @p
EXEC price "Shadmehr Aghili"


CREATE PROCEDURE ordered
@o varchar(255)
 AS 
SELECT orders.Date , products.Name  FROM orders INNER JOIN customers
ON customers.ID = orders.Customer_id
INNER JOIN products
ON products.ID = orders.Product_id
INNER JOIN cities
ON cities.ID=customers.City_id
WHERE cities.name = @o
EXEC ordered"Esfehan"

CREATE PROCEDURE CUSTOMER
@c varchar(255)
 AS 
SELECT customers.Name , products.Price , customers.Address  FROM customers INNER JOIN orders
ON customers.ID = orders.Customer_id
INNER JOIN products
ON products.ID = orders.Product_id
WHERE products.Price < @c
EXEC CUSTOMER"400"