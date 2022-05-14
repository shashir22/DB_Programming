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
create procedure SpAddressBook
(
	@First_Name varchar(200),
	@Last_Name varchar(200),
	@Address varchar(200),
	@City varchar(200),
	@State varchar(200),
	@Zip varchar(100),
	@Phone_Number varchar(200),
	@Email varchar(200),
	@AddressbookName int,
	@Type int
)
as
begin
insert into AddressBook values(@First_Name,@Last_Name,@Address,@City,@State,@Zip,@Phone_Number,@Email,@AddressbookName,@Type);
SET NOCOUNT ON;
select * from AddressBook
END
GO
select * from AddressBook