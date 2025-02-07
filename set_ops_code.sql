CREATE DATABASE set_ops;
use set_ops;

create table dept_1(
	emp_id int primary key not null auto_increment,
    name varchar(255),
    role varchar(255)
);

create table dept_2(
	emp_id int primary key,
    name varchar(255),
    role varchar(255)
);

insert into dept_1(name, role) values
	("A", "engineer"),
    ("B", "salesman"),
    ("C", "manager"),
    ("D", "salesman"),
    ("E", "engineer");
    
insert into dept_2(emp_id, name, role) values
	(3, "C", "manager"),
    (6, "F", "marketing"),
    (7, "G", "salesman");
    
-- SET OPS

-- LIST ALL THE EMPLOYEES IN THE COMPANY
select d_one.* from dept_1 as d_one union select d_two.* from dept_2 as d_two;

-- LIST ALL THE EMPLOYESS IN ALL DEPARTMENTS who work as salesman
select * from dept_1 where dept_1.role = "salesman" union select * from dept_2 where dept_2.role = "salesman";

-- INTERSECT
-- LIST ALL THE DEPT HOW WORKED OUT FOR BOTH DEPT.
select dept_1.* from dept_1					
inner join dept_2 using(emp_id);

-- MINUS
-- LIST OUT ALL THE EMPLOYEES WORKING IN DEPT_ONE BUT NOT IN TWO
select dept_1.* from dept_1 left join dept_2 using(emp_id)
	where dept_2.emp_id is null;

