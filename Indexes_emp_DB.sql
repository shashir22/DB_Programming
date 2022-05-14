use payroll_service;
-----create table for indexes-----------
create table Employees
(
Id int primary key identity,
[Name] nvarchar(50),
Email nvarchar(50),
Department nvarchar(50)
)


select * from Employees

-------indexes -----------------

set nocount on

declare @counter int = 1

while (@counter <= 100000)
begin
	declare @Name nvarchar(50) = 'ABC' + RTRIM(@counter)
	declare @Email nvarchar(50) = 'abc' + RTRIM(@counter) + 'bridgeLabz.com'
	declare @Dept nvarchar(50) = 'Dept' + RTRIM(@counter)
	
	insert into Employees values (@Name, @Email, @Dept)


	set @counter = @counter +1

	if(@counter%100000 = 0)
		print RTRIM(@counter) + 'rows inserted'
end

select * from Employees where Id = 932000


------------clustered index-------------
select * from Employees where Id = 100531
select * from Employees where Id = 65895

-----------Non Clustered indrx------------
select * from Employees where Name = 'ABC65' 


---------Creating Non Clusterd Index---------
create NonClustered index Employee1
ON Employees(Department)
 
select * from Employees where Department = 'Developer'




