use payroll_service;
go
 ----system defined functions---
 --GETDATE(), APP_NAME(), COALESCE, CURRENT_USER
 
 select GetDate();
 select APP_NAME();
 select CURRENT_USER
 declare @FName varchar(50)
 set @FName='Shashi'
 select COALESCE(@FName,'Madhu')

 ---To create scalar function ----
 ----return single value----
 go
 create function AddDigit(@num1 int,@num2 int)
 returns int
 as
 begin
 declare @result int;
 Set @result=@num1+@num2;
 return @result
 end 
 --select dbo.AddDigit(1,3)


 ------scalar function----
 alter function EmployeeTotal(@id int)
 returns int
 as 
 begin
 declare @result int;
 select @result=basic_pay from employee_payroll where id = 1
 select @result=taxable_pay from employee_payroll where id = 1
 select @result=income_tax from employee_payroll where id = 1
 select @result=net_pay from employee_payroll where id = 1
 return @result
 end

 select id,basic_pay,taxable_pay,income_tax,net_pay, dbo.EmployeeTotal(id) as Total from employee_payroll
 
 select * from employee_payroll