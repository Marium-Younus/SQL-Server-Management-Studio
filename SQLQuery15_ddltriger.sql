create database ddltrigger1
--------------------------------------------------------------------------------------
use ddltrigger1

Create table back_up
(
actions varchar(200), action_date datetime
)
---------------------------------------------------------------------------------------

create  trigger ddl_create on database
for create_table
as
    declare @action varchar(200);
    SELECT top 2 @action =  name FROM sys.tables
     insert into back_up values(@action+' table has been created', getdate())
    print 'table created';
--=======================================================================================
create table emp(m_id int,m_name varchar(12))

select * from emp
select * from back_up

--========================================********************================================
select * from sys.tables
select * from sys.databases
--========================================create trigger for datbase ================================
create trigger ddl_db on all server
for create_database
as
  declare @ac varchar(20);
  declare @dt varchar(30);
  SELECT top 100 percent @ac =  name FROM sys.databases;
   set @dt=getdate();
   print @ac+' database has been created on '+ @dt;

--============================================***************===============================
create database new_db

