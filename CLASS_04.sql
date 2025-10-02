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

-------Unique Key------------

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);

INSERT INTO Persons (ID, LastName, FirstName, Age) VALUES
(1, 'Smith', 'John', 30),
(2, 'Johnson', 'Emily', 25),
(3, 'Williams', 'Michael', 40),
(4, 'Brown', 'Sarah', 22),
(5, 'Jones', 'David', 35),
(6, 'Garcia', 'Maria', 28),
(7, 'Martinez', 'Carlos', 33),
(8, 'Davis', 'Anna', 27),
(9, 'Rodriguez', 'Laura', 31),
(10, 'Wilson', 'James', 29);


ALTER TABLE Persons
ADD UNIQUE (ID);

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

select* from Persons

INSERT INTO Persons (ID, LastName, FirstName, Age) VALUES
(1, 'Smith', 'John', 30),
(2, 'Johnson', 'Emily', 25),
(3, 'Williams', 'Michael', 40);

------Unique Key-----------
create table Students 
(id int primary key,
Name varchar(30),
LastName varchar(30),
Age int , 
CONSTRAINT UC_Students UNIQUE (id , LastName)
);

INSERT INTO Students (id, Name, LastName, Age) VALUES
(1, 'John', 'Smith', 20),
(2, 'Emily', 'Johnson', 22),
(3, 'Michael', 'Williams', 21),
(4, 'Sarah', 'Brown', 23),
(5, 'David', 'Jones', 19),
(6, 'Maria', 'Garcia', 20),
(7, 'Carlos', 'Martinez', 22),
(8, 'Anna', 'Davis', 21),
(9, 'Laura', 'Rodriguez', 20),
(10, 'James', 'Wilson', 23);

Select * from Students;

---Result Check-----

INSERT INTO Students (id, Name, LastName, Age) VALUES
(1, 'John', 'Smith', 20),
(2, 'Emily', 'Johnson', 22);

---run and it works--

----Alter------

ALTER TABLE Students
DROP CONSTRAINT UC_Students;

ALTER TABLE Students
ADD CONSTRAINT UC_Students UNIQUE (id,LastName);

Select * from Students;

---Result Check-----

INSERT INTO Students (id, Name, LastName, Age) VALUES
(1, 'John', 'Smith', 20),
(2, 'Emily', 'Johnson', 22);

---run and it works--

