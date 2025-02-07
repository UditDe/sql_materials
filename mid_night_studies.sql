use org;

-- ans one
select first_name as "Worker Name" from Worker;

-- ans two
select upper(first_name) from Worker;

-- ans three
select distinct department from Worker;

-- ans four
select substring(first_name, 1, 3) from Worker;

-- ans five
select INSTR(first_name, 'M') from worker where first_name = 'Rima';

-- ans six
select rtrim(first_name) from Worker;

-- ans seven
select ltrim(first_name) from Worker;

-- ans eight
select distinct department as dp, length(department) as leng from Worker;

-- ans 9
select replace(first_name, 'a', 'A') from Worker;

-- ans 10
select concat(first_name, last_name) as full_name from Worker;

-- ans 11
select * from Worker order by first_name;

-- ans 12
select * from Worker order by first_name, department desc; 

-- ans 13
select * from Worker where first_name in ('Rima', 'Pritam');

-- ans 14
select * from Worker where first_name not in ('Rima', 'Pritam');

-- ans 15
select * from Worker where department like "PA%";

-- ans 16
select * from Worker where first_name like "%a%";

-- ans 17
select * from Worker where first_name like "%a";

-- ans 18
select * from Worker where first_name like "%a" and length(first_name) = 6;

-- ans 19
select * from Worker where salary between 100000 and 500000;

-- ans 20
select * from Worker where year(joining_date) = 2014 and month(joining_date) = 02;

-- ans 21
select department, count(*) from Worker where department = "CEO";

-- ans 22
select concat(first_name, " ", last_name) as "full_name", salary from Worker where salary between 50000 and 250000;

-- ans 23
select department, count(worker_id) as "number of emp" from Worker group by department order by "number of emp" desc;

-- ans 24
select W.* from Worker as W inner join title as T on W.worker_id = T.worker_ref_id where T.worker_title = 'Manager';

-- ans 25
select worker_title, count(*) as "number" from title group by worker_title having count(*) > 1;

-- ans 26
select * from worker where mod (worker_id, 2) <> 0;

-- ans 27
select * from worker where mod (worker_id, 2) = 0;

-- ans 28
create table worker_clone like Worker;
insert into worker_clone
		select * from Worker;
select * from Worker;

-- ans 29
select Worker.* from Worker inner join worker_clone using(worker_id);

-- ans 30
select Worker.* from Worker left join worker_clone using(worker_id) where worker_clone.worker_id is NULL;

-- ans 31
select current_date();
select now();

-- ans 32
select * from Worker order by salary desc limit 5;	

-- ans 33
select * from Worker order by salary desc limit 2,3;

-- ans 34
select salary from Worker w1 
where 4 = (
	select count(distinct(w2.salary))
    from Worker w2
    where w2.salary >= w1.salary
);

-- ans 35
select w1.* from Worker w1, Worker w2 where w1.salary = w2.salary and w1.worker_id != w2.worker_id;

-- ans 36
select max(salary) from Worker 
where salary not in (select max(salary) from Worker); 

