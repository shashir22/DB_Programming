use payroll_service;
---JOINS----
select * from employee_payroll
select * from tempTable

select e.id, t.[Employee name], e.basic_pay, e.Gender, e.phone, e.department from employee_payroll e
inner join tempTable t
on e.id = t.[Employee id]

---LEFT JOIN

select * from employee_payroll
select * from tempTable

select e.id, t.[Employee name], e.basic_pay, e.Gender, e.phone, e.department from employee_payroll e
left outer join tempTable t
on e.id = t.[Employee id]



----RIGHT OUTER JOIN
select * from employee_payroll
select * from tempTable

select e.id, t.[Employee name], e.basic_pay, e.Gender, e.phone, e.department from employee_payroll e
right outer join tempTable t
on e.id = t.[Employee id]

----FULL OUTER JOIN

select * from employee_payroll
select * from tempTable

select e.id, t.[Employee name], e.basic_pay, e.Gender, e.phone, e.department from employee_payroll e
full join tempTable t
on e.id = t.[Employee id]

---CROSS JOIN

select * from employee_payroll
select * from tempTable

select e.id, e.[Employee name], e.basic_pay, e.Gender, e.phone, e.department from employee_payroll e
cross join tempTable t


