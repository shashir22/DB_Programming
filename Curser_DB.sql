---cursers----

DECLARE 
    @name VARCHAR(20), 
    @address varchar(20);

DECLARE cursor_employee CURSOR
for select
        name, 
        address
    from 
        employee_payroll;

open cursor_employee; 
fetch next from cursor_employee into
    @name, 
    @address;

while @@FETCH_STATUS = 0
    begin
        print @name +'-'+ CAST(@address as varchar);
        fetch next from cursor_employee into 
		    @name, 
            @address;
    end;

	close cursor_employee;
	 deallocate cursor_employee;