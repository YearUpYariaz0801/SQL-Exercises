use northwind;

#1 
SELECT count(*)
from suppliers;

#2 
SELECT SUM(salary) AS total_salary
FROM employees;

#3 
SELECT min(UnitPrice)
from products;

#4 
SELECT avg(UnitPrice)
from products;

#5
SELECT max(UnitPrice)
from products;

#6
SELECT SupplierID, QuantityPerUnit
FROM products;

#7
SELECT CategoryID, AVG(UnitPrice) AS AverageUnitPrice
FROM products
GROUP BY CategoryID;

#8
SELECT SupplierID, COUNT(*) AS NumberOfItems
FROM products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

#9
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM products
ORDER BY InventoryValue DESC, ProductName ASC;