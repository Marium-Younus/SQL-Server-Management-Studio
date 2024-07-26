--current database tables info
exec sp_tables '%','dbo' ,Db_join
-- procedure calling info
exec sp_stored_procedures DB_join
--primary key
exec sp_pkeys Department
-- who
exec sp_who
--
exec sp_help 'Employee'
-- 
--User Defined SP
select * from Employee
--create SP
create procedure myemp
AS
Begin
select Emp_id ,Emp_Name,Emp_Salary from Employee
End
GO
exec myemp
--=================================
create procedure emp_info
@sal int
as
begin
select Emp_id ,Emp_name ,Emp_Salary from Employee where Emp_Salary = @sal
end
go
drop procedure emp_info
--
exec emp_info 45000

-- sp via wild card
create procedure wild_card
@name varchar(50)
as
select * from Employee where Emp_Name like  @name

--
exec wild_card 'S%'
exec wild_card 'M%'