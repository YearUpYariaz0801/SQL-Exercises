use northwind;

products

SELECT ProductID, ProductName, UnitPrice
-- FROM products;productsproducts

SELECT ProductID, ProductName, UnitPrice
-- FROM products
-- ORDER BY UnitPrice;

SELECT *
-- FROM products
-- WHERE UnitPrice <= 7.50;

 SELECT ProductID, ProductName, UnitPrice, UnitsInStock
-- FROM products
-- WHERE UnitsInStock >= 100
-- ORDER BY UnitPrice;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
-- FROM products
-- WHERE UnitsInStock >= 100
-- ORDER BY UnitPrice desc, ProductName;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
-- FROM products
-- WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
-- ORDER BY ProductName;

Categories

SELECT *
-- FROM categories;
-- WHERE categoryname = "Seafood" ;
-- The seafood ID is 8

SELECT *
-- FROM products
-- WHERE CategoryID = "8";

 SELECT 
-- EmployeeID, FirstName, LastName,
-- concat(FirstName, " ", lastName) AS FullName
-- FROM employees;

SELECT *
-- FROM employees
-- WHERE title LIKE "%Manager%";

SELECT distinct Title
-- FROM employees;

SELECT EmployeeID, FirstName, LastName, Salary
-- FROM employees
-- WHERE salary BETWEEN 2000 AND 2500;

SELECT *
-- FROM suppliers;

SELECT SupplierID, CompanyName
--  FROM suppliers
--  WHERE CompanyName = "Tokyo Traders";

SELECT *
--  FROM products
--  WHERE SupplierID = "4";

--  SELECT *
--  FROM products
--  WHERE SupplierID = (
--      SELECT SupplierID
--      FROM suppliers
--      WHERE CompanyName = 'Tokyo Traders'
-- );

-- OR alternative option

-- 16. select * from Products
-- WHERE SupplierID = (
--   SELECT SupplierID 
--   from Suppliers s 
--   WHERE s.CompanyName = "Tokyo Traders" 
-- );