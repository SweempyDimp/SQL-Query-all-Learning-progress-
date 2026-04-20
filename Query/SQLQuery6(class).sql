-- * is used to select all columns


select * from emp
select empno, ename, sal from emp


-- where statement
-- is used to apply filter on select statement
select * from emp where deptno = 10
select * from emp where deptno = 10 or deptno = 20

select * from emp where ename = 'smith'
select * from emp where ename ='smith' or ename = 'scott'

-- task --
select * from emp where job = 'analyst'
select * from emp where empno = 7788 or empno = 7369

--
select * from emp where sal >= 3000
select * from emp where sal >= 1000 and sal <= 3000

select * from emp where hiredate >= '01-jan-1982'
select * from emp where hiredate >= '01-jan-1982' and hiredate <= '31-dec-1982'