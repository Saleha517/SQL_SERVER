CREATE TABLE Customers
(
 id int primary key,
 name varchar(250)
)


Insert into Customers(id , name) values
(1,'Saleha'),
(2, 'Manahil'),
(3 , 'Ghazala')


Select * from Customers

Begin Transaction
Insert into Customers (id , name) values
(4,'Lishuu'),
(5, 'Waseela')

PRINT @@TRANCOUNT
Select * from Customers
Commit

---Transaction With Try & Catch---

Begin try
Begin Transaction
Insert into Customers (id , name) values
(6,'Gul-Bahar'),
(7, 'Biyaa')

PRINT @@TRANCOUNT
Select * from Customers
Commit

Print 'COMMIT OCCURED'

End try

Begin Catch 
CREATE TABLE Customers
(
 id int primary key,
 name varchar(250)
)


Insert into Customers(id , name) values
(1,'Saleha'),
(2, 'Manahil'),
(3 , 'Ghazala')


Select * from Customers

Begin Transaction
Insert into Customers (id , name) values
(4,'Lishuu'),
(5, 'Waseela')

PRINT @@TRANCOUNT
Select * from Customers
ROLLBACK

Print 'Roll back occured'
End catch 



