CREATE DATABASE MyShop;


USE MyShop;

CREATE TABLE Sales (
    SaleID INT,
    ProductName VARCHAR(100),
    Quantity INT,
    PricePerUnit DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductName, Quantity, PricePerUnit)
VALUES
(1, 'Mobile', 5, 15000),
(2, 'Laptop', 2, 70000),
(3, 'Tablet', 4, 30000),
(4, 'Mobile', 3, 15000),
(5, 'Laptop', 1, 70000);

SELECT COUNT(*) AS TotalSales FROM Sales;


SELECT SUM(Quantity * PricePerUnit) AS TotalRevenue FROM Sales;

SELECT ProductName, COUNT(*) AS TotalOrders, SUM(Quantity * PricePerUnit) AS TotalAmount FROM Sales
GROUP BY ProductName HAVING SUM(Quantity * PricePerUnit) > 50000 ORDER BY TotalAmount DESC;


ALTER TABLE Sales ADD CONSTRAINT PK_Sales_SaleID PRIMARY KEY (SaleID);


ALTER TABLE Sales ALTER COLUMN SaleID INT NOT NULL;


ALTER TABLE Sales ADD CONSTRAINT PK_Sales_SaleID PRIMARY KEY (SaleID);

