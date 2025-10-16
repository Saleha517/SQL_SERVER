Create database DATA
use DATA
create table users
(
  id int primary key identity(1,1),
  name varchar(50),
  password int
)
 
create table LogTable
(
  id int primary key identity(1,1),
  LogMessage varchar(100),
  LogDate date
)




CREATE Trigger tg_user_insert
ON users
AFTER INSERT 
AS 
BEGIN 
  insert into LogTable(LogMessage,LogDate)
  select 'User Inserted:'+name , GETDATE()
   from inserted
END

--update query
create trigger tg_update
ON users
After UPDATE 
AS 
BEGIN
  insert into LogTable(LogMessage,LogDate)
  select 'User Updated: '+name , GETDATE()
  from inserted
 
END

drop trigger tg_user_insert
drop trigger tg_update
insert into users (name,password) values ('Saleha' , 98745)
update users set name = 'Syeda Saleha' , password = 7890 where id = 1
select * from users
select * from LogTable


create trigger tg_delete
ON users
After UPDATE 
AS 
BEGIN
  insert into LogTable(LogMessage,LogDate)
  select 'User Delete: '+name , GETDATE()
  from deleted
 
END

Delete From users Where id = 1