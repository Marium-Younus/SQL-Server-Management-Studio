create database mydb_sp
use mydb_sp
create table UserTable
(
U_Login varchar(50),
U_Pass varchar(50),
U_Fn varchar(50),
U_Ln varchar(50),
U_Add1 varchar(50),
U_Add2 varchar(50),
U_City varchar(50),
U_State varchar(50),
U_Zipcode int,
U_Email varchar(50),
)

alter table usertable
add u_id int
-- insert SP create
create procedure sp_user
@id int,
@log varchar(50),
@pwd varchar(50),
@fn varchar(50),
@ln varchar(50),
@add1 varchar(50),
@add2 varchar(50),
@c varchar(50),
@s varchar(50),
@zc int,
@e varchar(50)
As
begin
insert into UserTable (u_id,U_Login,U_Pass,U_Fn,U_Ln,U_Add1,U_Add2,U_City,U_State,U_Zipcode,U_Email)
					values (@id,@log,@pwd,@fn,@ln,@add1,@add2,@c,@s,@zc,@e)
end 
drop procedure sp_user
--
exec sp_user 2,'Mahad','123','Mahad','Khan','Block A','Block C','Lahore','XYZ',8700,'m@aptechnn.com'

select * from UserTable
truncate table UserTable

--update for SP
create procedure usersp_update
@id int,@u_log varchar(50),@u_pass varchar(50),@u_f varchar(50),@u_l varchar(50),@u_a1 varchar(50),@u_a2 varchar(50),@u_cit varchar(50),
@u_state varchar(50),@u_zip int,@u_email varchar(50)
as 
begin
update UserTable set U_Login = @u_log ,U_Pass=@u_pass , U_Fn=@u_f , U_Ln=@u_l , U_Add1=@u_a1 , U_Add2=@u_a2 ,U_City =@u_cit,U_State =@u_state,
					U_Zipcode =@u_zip ,U_Email =@u_email where u_id = @id
end	

--update Stored procedure
exec usersp_update 2,'Mahad','aptech','Admin','Mahad','B S','B C','Lahore','MNO',1200,'mahad@yahoo.com'

--if else
 create procedure insertemp_details
@emp_id bigint,
@emp_nm varchar(50),
@emp_age bigint,
@emp_sal bigint
as
   if @emp_id is null
begin
   print 'Id is null'
return
end
		else
        begin
            insert into employee (emp_id,emp_name,emp_age,emp_salary) values(@emp_id,@emp_nm,@emp_age,@emp_sal)
         end
drop procedure insertemp_details
		 --exec
		 exec insertemp_details 1 ,'Ali',23,25000