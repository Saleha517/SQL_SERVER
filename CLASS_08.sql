--- DB ---
Create database DATA

--Table--

Create Table Users
(Id int primary key,
Name varchar(50))

--Insert--

INSERT INTO Users (Id, Name) VALUES
(1, 'Alice'),
(2,'John'),
(3, 'Diana'),
(4, 'Roso'),
(5, 'Michael'),
(6, 'Sophia'),
(7, 'David'),
(8, 'Emma'),
(9, 'Liam'),
(10, 'Olivia'),
(11, 'Noah'),
(12, 'Ava'),
(13, 'Ethan'),
(14, 'Isabella'),
(15, 'James'),
(16, 'Mia'),
(17, 'Benjamin'),
(18, 'Charlotte'),
(19, 'Lucas'),
(20, 'Amelia');


--Select--

Select* from Users

--Like--

Select* from Users Where Name like 'A%';

Select* from Users Where Name like '%ce';

Select* from Users Where Name like 'D%a';


--Wildcard--

Select* from Users Where Name like 'A____';

Select* from Users Where Name like '[abcdefg]';

Select* from Users Where Name like '[a-z]';

Select* from Users Where Name like '[^D]';


--TRY CTACH--

Begin try

 INSERT INTO Users (Id, Name) VALUES
(21, 'Harper'),
(22, 'Elijah'),
(23, 'Ella'),
(24, 'Mason'),
(25, 'Grace');


print 'Error: Record Successfully inserted';

end try

begin catch 

INSERT INTO Users (Id, Name) VALUES
(26, 'Henry'),
(27, 'Chloe'),
(28, 'Alexander'),
(29, 'Lily'),
(26, 'Daniel');

print 'Error:' + Error_Message();

end catch 

select* from Users

