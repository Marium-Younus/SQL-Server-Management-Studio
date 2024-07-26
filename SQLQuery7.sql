create database institue
use institue
-- column level
create table Departmant
(
D_id int constraint d_id primary key,
D_name varchar(50)
)
insert into Departmant values(1,'Faculty')
insert into Departmant values(2,'HR')
insert into Departmant values(3,'Marketing')
insert into Departmant values(4,'SRO')
--**************----------------------------
create table Employee(
E_id int constraint e_id primary key,
E_name varchar(50),
E_salary int,
E_desig varchar(50),
D_Id_FK int references Departmant(D_id)
)
insert into Employee values(1,'Asad',20000,'Juinor Faculty',1)
insert into Employee values(2,'Kelvin',50000,'Manager HR',2)
insert into Employee values(3,'Miss Sadia',50000,'Senior Faculty',1)
insert into Employee values(4,'Miss Sana',45000,'Officer',3)
insert into Employee values(5,'Miss Munnaza',35000,'Bla Bla',2)
insert into Employee values(6,'Miss xyz',35000,'Bla Bla',4)
select * from Departmant 
select * from Employee

--========================== table level
create table Employee2
(
E_id int,
E_name varchar(50),
E_salary int,
E_desig varchar(50),
D_Id_FK int,
constraint e_pk primary key (E_id),
constraint d_fk foreign key(D_Id_FK) references Departmant(D_id)
)

insert into Employee2 values(1,'Asad',20000,'Juinor Faculty',1)
insert into Employee2 values(2,'Kelvin',50000,'Manager HR',2)
insert into Employee2 values(3,'Miss Sadia',50000,'Senior Faculty',1)
insert into Employee2 values(4,'Miss Sana',45000,'Officer',3)
insert into Employee2 values(5,'Miss Munnaza',35000,'Bla Bla',2)
insert into Employee2 values(6,'Miss xyz',35000,'Bla Bla',4)
select * from Employee2