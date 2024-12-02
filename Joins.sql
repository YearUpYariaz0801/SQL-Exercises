use Northwind;

#1
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products p
JOIN (
    SELECT CategoryID, CategoryName
    FROM categories
) c
ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName ASC, p.ProductName ASC;

#2
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    s.CompanyName AS SupplierName
FROM 
    Products p
JOIN 
    (SELECT SupplierID, CompanyName FROM Suppliers) s
ON 
    p.SupplierID = s.SupplierID
WHERE 
    p.UnitPrice > 75
ORDER BY 
    p.ProductName;

#3
select
products.ProductID, products.ProductName, products.UnitPrice,
categories.CategoryName,
suppliers.CompanyName
from products
join categories on categories.CategoryID = products.CategoryID
join suppliers on suppliers.SupplierID = products.SupplierID
order by ProductName;

#4.
select products.ProductName, products.UnitPrice,
categories.CategoryName
from products
join categories on categories.CategoryID = products.CategoryID
where products.UnitPrice = (
	select max(products.UnitPrice)
    from products);
    
#5.
select
orders.OrderID, orders.ShipName, orders.ShipAddress,
shippers.CompanyName, orders.ShipCountry
from orders
join shippers on shippers.ShipperID = orders.ShipVia
where orders.ShipCountry = "Germany";

#6.
select
orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress,
products.ProductName
from products
join `order details` on `order details`.ProductID = products.ProductID
join orders on orders.OrderID = `order details`.OrderID
where products.ProductName = "Sasquatch ale";