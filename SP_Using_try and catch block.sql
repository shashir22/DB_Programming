use payroll_service;
go

------------Using try catch block
alter procedure DeleteByid	
(
 @id int
)
as
begin try
     Delete from employee_payroll where id = @id
	 
end try
begin catch
select
		ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage

end catch

exec DeleteByid 16

--------Procedure to add new employee

alter procedure spemp(
    @Name Varchar(20),
    @Salary float,
    @StartDate Date,
	@gender char(1),
	@City Char(50),
	@Experience Char(5),
	@Department Char(20)
) as
begin try
   
    Insert into employee_payroll values (@Name,@Salary,@StartDate,@gender,@City,@Experience,@Department)

end try
begin catch
    select 
        ERROR_NUMBER() as ErrorNumber,
        ERROR_SEVERITY() as ErrorSeverity,
        ERROR_STATE() as ErrorState,
        ERROR_PROCEDURE() as ErrorProcedure,
        ERROR_LINE() as ErrorLine,
        ERROR_MESSAGE() as ErrorMessage
end catch









select * from employee_payroll