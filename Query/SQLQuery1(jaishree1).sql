create table Department
(
DeptID int,
DeptName varchar(30)
)



---- types of cammands ----

--DDl --Defination            --alter[DDl]  : modifying the existing database objects (structure)
                                      -- No changes will be done on DATA!
--DML --Manipulation          --update[DML] : changes/updates data inside tables

--DQL --Query                 --only one command "SELECT" -display the output

--DCL --Data Control          --for access permission  - access, grant, rovoke

--TCL --Transaction Control   --used to save the changes  - commit(used to save changes), rollback(undo), savepoint(create checkpoints)

---------------------------




--------------------what jaishree man wrote-------------------
--creating database



--Database : help me to store information
--tabular [structured] rows and columns
--data  

--server [local]

--basic installation[SQL server]
--developer
		--testing and development
		--learning
		--unlimited
		--NOT for production
--express
		--production purpose [host]
		--publically
		--10 GB [limited]
		--advance features

----------------------------------------------

--BASIC
	--Minimalistic instalation
	--NSSQLSERVER
--CUSTOM
	--customize installation

-----------------------------------------------


--authentication mode
--Windows 
--SQL server Authentication mode

----------------------------------------------

--Azure extension [uncheck]
	--Hybrid mode storing 

-------------------------------------------


--Types of Commands
--DDL
--Defination

--create: create database object
--alter: modifying the existing database objects
		--NO changes will be done on DATA!
--drop: remove the existance of the database object
	--table will be removed, along with that data will be removed
--truncate: ONlY the data is going to be removed, structure remain

--table , rules applied[primary, foreign]

--alter[DDL]: modifying the existing database objects
		--Changing the structure of data
		Employee	EmpID  | Salary

--update[DML]:--Change the data present in the table
Employee	EmpID  | Salary
riya		3456		30000
riya1		3456		40000
riya2		3456		50000
riya3		3456		0

update table_name
set Salary = 35000
where Employee riya1



--DML
--Manipulation

--insert: add records into the table
--update --to change the records present in the table
--delete: delete a set of records, remove all the records



--DQL
--Query
--select --display the output, retrieve data from table
	

--select

--DCL
--Data Control
--access permission

--grant --give
--revoke --remove

--TCL
--Transaction

--stage1
begin transaction
--change1[deducting money]

--change2
save transaction saveme1 --bookmark1
--change3
rollback saveme1
commit

--commit --it is used to save the changes
--rollback -- undo
--savepoint --create checkpoints [bookmarks]






CREATE TABLE DEPARTMENT1 (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

--constraints
--primary key
--no null, duplicates
--unique key
--NULL are allowed, duplicates are NOT allowed
--default key
--foreign key

INSERT INTO DEPARTMENT1 VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance');

select DeptName from DEPARTMENT1