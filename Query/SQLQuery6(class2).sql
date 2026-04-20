--where statement using operators
--in, not in --
-- IN --
select * from emp
select * from emp where deptno = 10 or deptno = 20
select * from emp where deptno in (10, 20)
select * from emp where deptno in (30)
select * from emp where job in ('clerk')
select * from emp where job in ('clerk', 'manager')

-- NOT IN --
select * from emp where deptno not in (10)
select * from emp where deptno not in (10, 30)
--

--query
select * from emp where ename in ('james', 'miller', 'smith')
----


-- BETWEEN, NOT BETWEEN --
select * from emp where sal between 1000 and 3000
select * from emp where hiredate between '01-jan-1982' and '31-dec-1982'

select * from emp where sal not between 1000 and 3000

-- query
select * from emp where hiredate between '01-jan-1983' and '31-dec-1983'
select * from emp where empno in (7900, 7788, 7369)
----


-- IS NULL, IS NOT NULL --
select * from emp where comm is null

select * from emp where comm is not null


-- LIKE, NOT LIKE --                                 -- used to filer text values that starting WITH, ENDS WITH, CONTAINS, DOESNT CONTAINS
select * from emp where ename like 's%'              -- ename starts with S , after S there can be any charecters
select * from emp where ename like 'a%'

select * from emp where ename like '%s'              -- ends with S
select * from emp where ename like '%r'

select * from emp where ename like 's%t'             -- ends with S and ends with T
select * from emp where ename like '%o%'             -- that contains 'O' somewhere between
select * from emp where ename not like '%o%'         -- that does not contain 'O' somewhere between

select * from emp where ename not like 's%'


-- GROUP BY STATEMENT --                             -- is used to prepare SUMMERY REPORTS, MIS REPORTS, CONSOLIDATION OF ROWS INTO MINIMAL NO OF ROW
select * from emp

select deptno, count(*) from emp
group by deptno

select job, count(*) as rows_cnt from emp            -- filters with all verites in JOB and gives COUNT to how many they are
group by job

select job, count(*) as CNT_ROWS from emp            -- COUNT(*) rows count, sum(col_name), max(col_name), avg(col_name)
group by job

select deptno, count(*) as CNT_ROWS, sum(sal) as total_SAL from emp
group by deptno

--query
select job, count(*) as job_cnt, max(sal) as max_sal from empgroup by job

select deptno, avg(sal) as avg_sal, max(sal) as max_sal from empgroup by deptno
----


-- ORDER BY --
select * from emp order by sal                        -- DEFAULT in ASCENDING order
select * from emp order by sal desc                   -- sorts column in descending order
select * from emp order by sal asc                    -- sorts column in ascending order


-- MULTI COL GROUP BY --
select * from emp order by deptno

select deptno, job, count(*) as REC_CNT from empgroup by deptno, job
order by deptno

select deptno, job, sum(sal) as TOT_SAL from empgroup by deptno, job
order by deptno

--------------------------- NEW DATA ---------------------------

select * from sales_data

select [customer name], count(*) as ORDERS_CNT from sales_data
group by [customer name]
order by orders_cnt

--query

select region, count(*) as ORDERS_CNT, sum(sales) as TOT_SALES from sales_data
group by region
order by orders_cnt

select [state], count(*) as ORDERS_CNT, sum(sales) as TOT_SALES, sum(profit) as TOT_PROFIT from sales_data
group by [state]
order by orders_cnt

select [ship mode], count(*) as ORDERS_CNT from sales_data
group by [ship mode]
order by orders_cnt
----

select Category, [Sub-Category], sum(sales) as TOT_SALES from sales_data
group by category, [sub-Category]
order by category

--query
select [state], city, count(*) as order_cnt, sum(sales) from sales_data
group by [state], city

select region, [ship mode], count([order id]) as order_cnt from sales_data
group by region, [ship mode]
ORDER BY Region

SELECT REGION , SEGMENT ,COUNT([ORDER ID]) AS CNT_ORDER FROM SALES_DATA GROUP BY REGION ,SEGMENT
ORDER BY Region
