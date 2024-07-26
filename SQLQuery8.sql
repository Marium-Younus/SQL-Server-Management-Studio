create table Customer
(
C_id int primary key,
C_firtname varchar(50) NULL,
C_lastname varchar(50) Not NULL,
C_add  varchar(50) NULL,
C_phone int Not Null
)

alter table Customer alter column C_phone varchar(50) not null

insert into Customer values(1,'Ali','Khan',Null,'03214509867')
insert into Customer values(2,'Sara','Ahmed',Null,'03214509867')
insert into Customer values(3,'Saira','Faisal',Null,'03265253145')
select * from Customer

truncate table Customer

create table Ordertable
(
o_id int primary key,
o_status varchar(50) null Default('Pending'),
shipping varchar(50) null default('No Shipping'),
order_date varchar(50) default(getdate())
)

select * from Ordertable

insert into Ordertable (o_id)values (1)
insert into Ordertable (o_id,o_status,shipping)values (2,'Accepted','Shipped')

create table student 
(
s_id int primary key,
s_name varchar(50) not null,
s_centre varchar(50) default('Aptech Learning'),
s_marks varchar(50) check(s_marks >= 0 and s_marks <= 100)

)

insert into student (s_id,s_name,s_marks) values (1,'Asad','56')
insert into student (s_id,s_name,s_marks) values (2,'sara','78')

insert into student (s_id,s_name,s_marks,s_age) values (3,'sara','78',45)
select * from student

ALTER TABLE student
  ADD CONSTRAINT std_age CHECK(s_age >=18 and s_age<=100)


  alter table student
  add  s_age int



  create table Teacher
  (
  t_id int primary key identity(1,1),
  t_name varchar(50),
  t_salary varchar(50),
  )

  select * from Teacher
  insert into Teacher values('Miss Sara','45000')
  insert into Teacher values('Miss Sadia','35000')
  insert into Teacher values('Miss Maria','25000')
  insert into Teacher values('Sir Maaz','15000')
  insert into Teacher values('Sire Ali','45000')