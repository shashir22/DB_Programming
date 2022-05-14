use payroll_service;
go 

---create view---

create view viewEmp
as
select * from employee_payroll;

select * from viewEmp;

sp_helptext 'viewEmp'


---alter view--
alter view viewEmp
as
select id,name from employee_payroll;

select * from viewEmp;

sp_helptext 'viewEmp'

select * from tempTable


---create multiple views
create view viewEmpMultiTable
as
select e.id, t.[Employee name], e.basic_pay, e.Gender, e.phone, e.department from employee_payroll e
join tempTable t
on e.id = t.[Employee id]

select * from viewEmpMultiTable


---- how to create 
-----schema binding sql view

create view viewEmpList
as
select * from employee_payroll;

select * from viewEmpList


create view viewEmpListWithSchemaBinding
with schemabinding
as
select id,name from dbo.employee_payroll;


----Complexity of query
 ---row level security and column level security
 create view viewRowLevel
 as
 select * from employee_payroll where id>3;

 select * from viewRowLevel

 create view viewColumnLevel
 as
 select id,name from employee_payroll 

 select * from viewColumnLevel


 select * from  employee_payroll 








