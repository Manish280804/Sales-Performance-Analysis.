create database E_Commerce ;
use E_Commerce;
CREATE TABLE Orders (
    OrderDate DATE,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Region VARCHAR(100),
    Quantity INT,
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2)
);

select * from Orders ;

SELECT SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM Orders;

SELECT Region, SUM(Sales) AS RegionSales
FROM Orders
GROUP BY Region
ORDER BY RegionSales DESC;

SELECT Category, SUM(Profit) AS CategoryProfit
FROM Orders
GROUP BY Category
ORDER BY CategoryProfit DESC;

SELECT ProductName, SUM(Sales) AS ProductSales
FROM Orders
GROUP BY ProductName
ORDER BY ProductSales DESC
LIMIT 10;

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(Sales) AS MonthlySales
FROM Orders
GROUP BY Month
ORDER BY Month;

