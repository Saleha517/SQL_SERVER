---DB CREATION

CREATE DATABASE DATA

---TABLE CREATION

CREATE TABLE Users
(id int primary key identity(100,1),
customer varchar(30),
city varchar(30),
country varchar(30)s
)

-----INSERT DATA INTO TABLE 

INSERT INTO Users (customer, city, country) VALUES
('Eve', 'Berlin', 'Germany'),
('Frank', 'London', 'UK'),
('Grace', 'Madrid', 'Spain'),
('Hannah', 'Paris', 'France'),
('Ivy', 'Rome', 'Italy'),
('Jack', 'Berlin', 'Germany'),
('Kathy', 'New York', 'USA'),
('Leo', 'Madrid', 'Spain'),
('Mona', 'Rome', 'Italy'),
('Nate', 'London', 'UK'),
('Olivia', 'Paris', 'France'),
('Paul', 'Tokyo', 'Japan'),
('Quinn', 'Tokyo', 'Japan'),
('Rita', 'Sydney', 'Australia'),
('Sam', 'Sydney', 'Australia'),
('Tina', 'Dubai', 'UAE');

------ SELECT 

SELECT*FROM Users

--SUM 

SELECT sum(id) Customers  FROM Users;

--Avg

SELECT avg(id) Customers_Avg  FROM Users;

---Count

SELECT COUNT(id) CUSTOMER_ID FROM Users;

---Group By

SELECT city, COUNT(*) AS user_count
FROM Users
GROUP BY city
ORDER BY user_count DESC;