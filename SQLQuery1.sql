-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [SpAddEmployeeDetails]
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
GO
select * from employee_payroll
