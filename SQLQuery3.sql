USE [payroll_service]
GO
/****** Object:  StoredProcedure [dbo].[SpAddEmployeeDetails]    Script Date: 09-05-2022 12:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SpAddEmployeeDetails]
(
@EmployeeName varchar(255),
@PhoneNumber varchar(255),
@Address varchar(255),
@Department varchar(255),
@Gender char(1),
@BasicPay float,
@Deductions float,
@TaxablePay float,
@Tax float,
@NetPay float,
@StartDate Date
)
as
begin
insert into employee_payroll values
(
@EmployeeName,@BasicPay,@StartDate,@Gender,@Department,@Address,@Deductions,@TaxablePay,@Tax,@NetPay,@PhoneNumber
)
end
exec insert into spemp 'Shashi','8884540867'.'Bangalore','MCA','M','10000'.'null','3000','1000','1500','2020-01-03'

select  *from employee_payroll