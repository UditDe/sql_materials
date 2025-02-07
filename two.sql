select * from Worker where department = 'HR' or department = 'PA';
select * from Worker where department in ('HR', 'CEO');
select * from Worker where department not in ('CA');

insert into Worker 
	(worker_id, first_name, last_name, salary, joining_date, department) values
    (019, 'Samanta', 'Banarjee', 600000, '11-08-22 09.00.00', NULL);
    
    
select * from Worker order by salary desc;
select distinct(department) from Worker;

-- GROUP BY
select department, count(department) from Worker group by department;

-- AVG salary per dept
select department, avg(salary) from Worker group by department;

-- MIN-MAX-SUM
select department, MIN(salary) from Worker group by department;
select department, MAX(salary) from Worker group by department;
select department, SUM(salary) from Worker group by department;

-- HAVING
select department, count(salary) from Worker group by department having count(department) >= 2;