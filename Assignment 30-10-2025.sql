---DB CREATION---

CREATE DATABASE BankDB

--Use DB--

Use BankDB

       ---Tables Creation---
--Table # 01--

Create Table Customers
(CustomerID INT Primary Key,
 FirstName VARCHAR(250),
 LastName VARCHAR (250),
 Email VARCHAR (250) Unique,
 Phone VARCHAR(250),
 Address VARCHAR (250),
 DateJoined DATE
);

--Insert Data--
 
Insert into Customers(CustomerID , FirstName , LastName , Email , Phone , Address, DateJoined)Values

(1, 'Saleha' , 'M.Usman' , 'salehausman517@gmail.com' , 03452222222 , '2025-10-01'),
(2 , '')

--Table # 02--

CREATE TABLE Accounts
(
    AccountID INT PRIMARY KEY,
    CustomerID INT, 
    AccountType VARCHAR(250),
    Balance DECIMAL(18, 2), 
    DateOpened DATE,
    Status VARCHAR(250),
	FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

--Table # 03--

CREATE TABLE Transactions
(
  TransactionID INT PRIMARY KEY,
  AccountID INT, 
  TransactionType VARCHAR(250),
  Amount DECIMAL(18,2),
  TransactionDate DATETIME,
  Remarks VARCHAR(250),
  CONSTRAINT FK_Transactions_Accounts  
  FOREIGN KEY (AccountID)
  REFERENCES Accounts(AccountID)
);


--Table # 04--

Create Table Staff
(
  StaffID INT Primary Key,
  FullName VARCHAR (250),
  Email VARCHAR(250),
  Role VARCHAR (250),
  Branch VARCHAR (250)
);

