---DB CREATION

CREATE DATABASE DATA

---TABLE CREATION

CREATE TABLE Users
(id int,
customer varchar(30),
city text,
country text
)

-----INSERT DATA INTO TABLE 

INSERT INTO Users (id, customer, city, country) VALUES
(1, 'Alice', 'New York', 'USA'),
(2, 'Bob', 'London', 'UK'),
(3, 'Charlie', 'Paris', 'France'),
(4, 'David', 'New York', 'USA'),
(5, 'Eve', 'Berlin', 'Germany'),
(6, 'Frank', 'London', 'UK'),
(7, 'Grace', 'Madrid', 'Spain'),
(8, 'Hannah', 'Paris', 'France'),
(9, 'Ivy', 'Rome', 'Italy'),
(10, 'Jack', 'Berlin', 'Germany'),
(11, 'Kathy', 'New York', 'USA'),
(12, 'Leo', 'Madrid', 'Spain'),
(13, 'Mona', 'Rome', 'Italy'),
(14, 'Nate', 'London', 'UK'),
(15, 'Olivia', 'Paris', 'France'),
(16, 'Paul', 'Tokyo', 'Japan'),
(17, 'Quinn', 'Tokyo', 'Japan'),
(18, 'Rita', 'Sydney', 'Australia'),
(19, 'Sam', 'Sydney', 'Australia'),
(20, 'Tina', 'Dubai', 'UAE');


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
