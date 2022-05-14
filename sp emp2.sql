use payroll_service;
--CREATE TABLE
GO
create table tempTable
(
[Employee id] int,
[Employee name] varchar(50)
)

--CREATE PROCEDURE
GO
create procedure InsertTemp
@id int,
@name varchar(50)
AS
BEGIN
insert into tempTable([Employee id],[Employee name])
values(@id, @name)
END
exec InsertTemp 2,'Madhu'
select * from tempTable

--ALTER PROCEDURE

GO
alter procedure InsertTemp
@id int,
@name varchar(50)
AS
BEGIN
insert into tempTable([Employee id],[Employee name])
values(@id, @name)
END

exec InsertTemp 6,'Sohan'
select * from tempTable
