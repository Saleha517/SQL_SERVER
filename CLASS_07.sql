--DB Create--

Create Database Office_Data

---Table---

Create table Employees(
      Employee_Id int primary key identity(1,1),
	  Employee_Name varchar(50),
	  Emp_ManagerID int
);

INSERT INTO Employees (Employee_Name, Emp_ManagerID) VALUES
('Alice Johnson', NULL),        -- Alice has no manager (e.g., CEO)
('Bob Smith', 1),               -- Bob reports to Alice (Employee_ID = 1)
('Carol White', 1),             -- Carol reports to Alice
('David Brown', 2),             -- David reports to Bob
('Eve Davis', 2),               -- Eve reports to Bob
('Frank Green', 3),             -- Frank reports to Carol
('Grace Lee', 3);               -- Grace reports to Carol

Select* from Employees  

SELECT e.Employee_ID, e.Employee_Name, m.Employee_ID AS Manager_ID, m.Employee_Name AS Manager_Name
FROM Employees e
JOIN Employees m ON m.Employee_ID = e.Emp_ManagerID;



