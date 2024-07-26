create database Dataintiger
use Dataintiger
--primary key use via column level
create table Customer
(
cus_id int primary key,
cus_name varchar(50),
cus_add varchar(50),
cus_age varchar(50),
)
--primary key use via column level 2ndway
create table Customer1
(
cus_id int constraint id_pk primary key,
cus_name varchar(50),
cus_add varchar(50),
cus_age varchar(50),
)
-- insert query for check pk
insert into Customer values (2,'Sameer','Lahore','25')

select * from Customer
--primary key use via table level
create table Customer2
(
c_id int,
c_name varchar(50),
c_add varchar(50),
c_age int,
constraint cid_pk primary key(c_id)
)
insert into Customer2 values (2,'Sameer','Lahore','25')
select * from Customer2

----unique key use via column level 
create table employee
(
e_id int primary key,
e_name varchar(50), 
e_add varchar(50),
e_age int,
e_location varchar(50) unique,
)
create table employee1
(
e_id int primary key,
e_name varchar(50), 
e_add varchar(50),
e_age int,
e_location varchar(50) constraint loc_un unique,
)
insert into employee values(3,'Miss Sana','Gulshan',78,'Surjani')
select * from employee

--unique key use via table level 
create table employee2
(
e_id int,
e_name varchar(50), 
e_add varchar(50),
e_age int,
e_location varchar(50),
constraint eid_pk primary key(e_id),
constraint loc_uniq unique(e_location)
)
select * from employee2
insert into employee2 values(1,'Miss Sana','Gulshan',78,'Surjani')
insert into employee2 values(2,'Miss Sana','Gulshan',78,null)
insert into employee2 values(3,'Miss Sana','Gulshan',78,'Gulshan block A')