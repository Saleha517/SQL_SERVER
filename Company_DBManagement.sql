create database Company;
Use Company;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT 
);

INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID)
VALUES
(1, 'HR', NULL),
(2, 'IT', NULL),
(3, 'Finance', NULL);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES
(101, 'Alice', 'Smith', 'alice@company.com', 1, '2020-01-15', 60000.00),
(102, 'Bob', 'Johnson', 'bob@company.com', 2, '2019-03-20', 75000.00),
(103, 'Charlie', 'Williams', 'charlie@company.com', 2, '2021-06-10', 50000.00),
(104, 'Diana', 'Brown', 'diana@company.com', 3, '2018-11-05', 80000.00),
(105, 'Ethan', 'Davis', 'ethan@company.com', 1, '2022-07-25', 55000.00);





ALTER TABLE Departments
ADD FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);


INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate)
VALUES
(201, 'Website Redesign', '2023-01-01', '2023-12-31'),
(202, 'Security Upgrade', '2023-05-01', '2023-11-30'),
(203, 'Financial Audit', '2023-03-01', '2023-09-30');


CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    AssignedDate DATE,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

INSERT INTO EmployeeProjects (EmployeeID, ProjectID, AssignedDate)
VALUES
(101, 201, '2023-01-10'),
(102, 201, '2023-02-15'),
(102, 202, '2023-06-01'),
(103, 202, '2023-06-10'),
(104, 203, '2023-03-05'),
(105, 201, '2023-04-01'),
(105, 202, '2023-05-01');



SELECT DISTINCT EmployeeID FROM EmployeeProjects;

SELECT EmployeeID, FirstName, LastName FROM Employees;


--testing query
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES (106, 'Fahad', 'Khan', 'fahad.khan@company.com', 2, '2023-08-10', 60000.00);

UPDATE Departments SET ManagerID = 101 WHERE DepartmentID = 1;
UPDATE Departments SET ManagerID = 102 WHERE DepartmentID = 2;
UPDATE Departments SET ManagerID = 104 WHERE DepartmentID = 3;



-- Increase salary for employee 103
UPDATE Employees
SET Salary = 52000.00
WHERE EmployeeID = 103;




-- Delete project only if no employees are assigned
DELETE FROM Projects
WHERE ProjectID = 203 AND ProjectID NOT IN (
    SELECT DISTINCT ProjectID FROM EmployeeProjects
);



-- INNER JOIN to list employees with department names
SELECT 
    E.EmployeeID, E.FirstName, E.LastName, D.DepartmentName
FROM 
    Employees E
INNER JOIN 
    Departments D ON E.DepartmentID = D.DepartmentID;




-- LEFT JOIN to include employees without any projects
SELECT 
    E.EmployeeID, E.FirstName, E.LastName, P.ProjectName
FROM 
    Employees E
LEFT JOIN 
    EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
LEFT JOIN 
    Projects P ON EP.ProjectID = P.ProjectID;




-- Find employees who are listed as department managers
SELECT 
    E.EmployeeID, E.FirstName, E.LastName
FROM 
    Employees E
WHERE 
    E.EmployeeID IN (SELECT ManagerID FROM Departments);





-- Employees who are not in EmployeeProjects
SELECT 
    E.EmployeeID, E.FirstName, E.LastName
FROM 
    Employees E
WHERE 
    NOT EXISTS (
 SELECT *
 FROM EmployeeProjects EP 
 WHERE EP.EmployeeID = E.EmployeeID);



 -- Group salaries by department
 SELECT 
    D.DepartmentName, SUM(E.Salary) AS TotalSalary
FROM 
    Employees E
JOIN 
    Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY 
    D.DepartmentName;



-- Overall average salary
SELECT 
    AVG(Salary) AS AverageSalary
FROM 
    Employees;


-- Highest and lowest salaries in company
SELECT 
    MAX(Salary) AS MaxSalary,
    MIN(Salary) AS MinSalary
FROM 
    Employees;


-- Count how many projects each employee is working on
SELECT 
    E.EmployeeID, E.FirstName, E.LastName,
    COUNT(EP.ProjectID) AS ProjectCount
FROM 
    Employees E  
LEFT JOIN 
    EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
GROUP BY 
    E.EmployeeID, E.FirstName, E.LastName;


-- Employee(s) with the highest salary
SELECT 
    E.EmployeeID, E.FirstName, E.LastName, E.Salary
FROM 
    Employees E
WHERE 
    E.Salary = (SELECT MAX(Salary) FROM Employees);


-- Find projects that have no assignments
SELECT 
    P.ProjectID, P.ProjectName
FROM 
    Projects P
LEFT JOIN 
    EmployeeProjects EP ON P.ProjectID = EP.ProjectID
WHERE 
    EP.EmployeeID IS NULL;

Select * from Employees

