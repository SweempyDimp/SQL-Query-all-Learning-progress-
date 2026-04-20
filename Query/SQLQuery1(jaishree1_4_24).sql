create table employee(
EmpID int primary key ,
Name varchar(30) not null ,
Email varchar(20) unique,
Salary int check (Salary >= 5000),
Country Varchar(20) default 'India',
Age int
)

sp_help employee
select * from employee

alter table employee 
add constraint CHK_EMPLOYEE_Age check (Age >=18)

--drop--ALTER TABLE EmployeeDROP CONSTRAINT constraint_name;alter table Employeedrop column dummycol
--------

-- EmpID int foreign key references employee (EmpID),
create table Department(
EmpID int primary key,
DName varchar(40)
)

sp_help Department
select * from employee
select * from Department

ALTER TABLE employee add DeptID int
FOREIGN KEY REFERENCES DEPARTMENT(EmpID)



select * from department
insert into department values
('1', 'abc'), ('2', 'abc2'), ('3', 'abc3')


select * from employee
insert into employee values
(11, 'testa', 'abcd@gmail.com', 5000, 'Japan', 19, 1),
(22, 'testb', 'abcd2@gmail.com', 6000, 'UK', 20, 2),

insert into employee (EmpID, Name, Email, Salary, Age, deptid) values
(33, 'testc', 'abcd3@gmail.com', 7000, 19, 3)


ALTER TABLE EmployeeDROP CONSTRAINT CK__employee__Salary__4AB81AF0;insert into employee (EmpID, Name, Email, Salary, Age) values
(44, 'testd', 'abcd4@gmail.com', 700, 19)




ALTER TABLE employee
ALTER COLUMN name VARCHAR(100)

exec sp_RENAME 'employee', 'employees'

select * from employees
truncate table employees   ----- table will get empty leaving column names while drop removes any traces of table 

select * from department
truncate table department