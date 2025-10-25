create login saleha with password = '1234'

Use DATA

create user saleha for login saleha

grant select on Customers to saleha

exec sp_helprotect null , saleha;

