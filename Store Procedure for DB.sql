use payroll_service;

Go
--create store procedure
alter procedure spemp
@id int,
@name varchar(50),
@Address varchar(50),
@Gender varchar(50)
AS
BEGIN
select * from employee_payroll where id = 1;
select * from employee_payroll where id = 2;
select * from employee_payroll where id = 3;
END

 exec spemp 6, 'Vinayak','Kolar','M'
select * from employee_payroll