CREATE DATABASE Institute

USE Institute

---Table 1----

CREATE TABLE Teacher 
(t_id int Primary key identity(1,1) , 
 t_name varchar(100) ,
 t_quali varchar(100),
 t_age int);

 INSERT INTO Teacher (t_name, t_quali, t_age) VALUES 
('Alice Johnson', 'M.Ed', 35),
('Bob Smith', 'Ph.D. in Mathematics', 45),
('Carla Green', 'M.Sc. in Physics', 38),
('Daniel Lee', 'B.Ed', 29),
('Emma White', 'M.A. in English', 41),
('Frank Moore', 'Ph.D. in Chemistry', 50),
('Grace Kim', 'M.Sc. in Biology', 33),
('Henry Clark', 'M.Ed', 37),
('Isabel Davis', 'M.A. in History', 40),
('Jack Wilson', 'Ph.D. in Computer Science', 48);

Select*from Teacher;

----Table 2---

CREATE TABLE Course
(c_id int Primary key identity(1,1),
c_name varchar(100));

INSERT INTO Course (c_name) VALUES
('SQL Programming'),
('Java Development'),
('PHP for Web Development'),
('Python Basics'),
('C# Fundamentals'),
('JavaScript Essentials'),
('Ruby on Rails'),
('Android App Development'),
('React.js Framework'),
('Node.js Backend Development');

Select*from Course;

---Table 3----

CREATE TABLE Exam
(e_id int primary key identity(1,1),
 ex_name varchar(100) ,
 ex_date DATE,
 ex_fee int);

INSERT INTO Exam (ex_name, ex_date, ex_fee) VALUES
('Midterm Exam', '2025-11-15', 5000),
('Final Exam', '2026-03-20', 10000),
('Quiz 1', '2025-09-10', 2000),
('Quiz 2', '2025-10-05', 2000),
('Project Presentation', '2026-01-15', 7000),
('Practical Exam', '2026-02-10', 8000),
('Supplementary Exam', '2026-04-05', 12000),
('Oral Exam', '2026-03-01', 6000),
('Mock Test', '2025-12-01', 3000),
('Weekly Test', '2025-09-25', 1500);

Select*from Exam;

---Table 4----
create table Students(
std_id int primary key identity(001,1), 
std_name varchar (90) , 
course_id  int,
teacher_id int  ,
m_fee int ,

foreign key(teacher_id) references teacher (t_id),
foreign key(course_id) references course(c_id)
 )

 INSERT INTO Students (std_name, course_id, teacher_id, m_fee) VALUES
('John Doe', 1, 2, 5000),
('Jane Smith', 2, 1, 7000),
('Michael Brown', 3, 3, 6000),
('Emily Davis', 1, 2, 5500),
('David Wilson', 4, 4, 6500),
('Sarah Johnson', 5, 5, 7000),
('Chris Lee', 2, 1, 7200),
('Anna Kim', 3, 3, 6800),
('James Clark', 4, 4, 6300),
('Laura Martinez', 5, 5, 7100);

Select*from Students;