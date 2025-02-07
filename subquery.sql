-- sub queries
-- alternate to joins => outer query (inner query) => generally outer query depends on inner query

use joins_learning;

-- where clause same table
-- employees with age > 30
select * from emp where age in (select age from emp where age > 30);

-- where clause diff table 
-- emp details working in more than 1 project
select * from emp where id in(
	select empID from proj group by empID having count(empID) > 1
);

-- single value sub-query
-- emp details having age > avg(age)
select * from emp where age > (select avg(age) from emp);

-- from clause
-- select max age person whose first name has 'a'
select max(age) from (select * from emp where fname like '%a%') as temp;

-- corelated subquery
-- find 3rd oldest employee
select * from emp as e1
where 3 = (
	select count(e2.age)
    from emp as e2
    where e2.age >= e1.age 
);

