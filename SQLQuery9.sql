select * from Department

select * from Employee
-- Inner Join
select Employee.Emp_Id,Employee.Emp_Name,Employee.Emp_Salary,Department.Dept_Name
from Employee inner join Department
on Department.Dept_Id = Employee.D_ID_FK
--left join
select Employee.Emp_Id,Employee.Emp_Name,Employee.Emp_Salary,Department.Dept_Name
from Department left join Employee
on Department.Dept_Id = Employee.D_ID_FK

--rightjoin  with realtionship
select Employee.Emp_Id,Employee.Emp_Name,Employee.Emp_Salary,Department.Dept_Name
from Department right join Employee
on Department.Dept_Id = Employee.D_ID_FK
--rightjoin without realtionship
select emp_demo.E_id,emp_demo.e_name,emp_demo.e_sal,Department.Dept_Name
from Department right join emp_demo
on Department.Dept_Id = emp_demo.D_fk

--full join
select Employee.Emp_Id,Employee.Emp_Name,Employee.Emp_Salary,Department.Dept_Name
from Department full join Employee
on Department.Dept_Id = Employee.D_ID_FK

--full join without relationship
select emp_demo.E_id,emp_demo.e_name,emp_demo.e_sal,Department.Dept_Name
from Department full join emp_demo
on Department.Dept_Id = emp_demo.D_fk
---self join
select Employee.Emp_Id ,Employee.Emp_Name
from Employee,Department
where Employee.Emp_Id  = Department.Dept_Id