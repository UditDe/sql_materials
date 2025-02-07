use joins_learning;

-- INNER JOIN
-- enlist all the emp id, names along with project allocated to them
select e.id, e.fname, e.lname, p.id, p.book_name from emp as e
inner join proj as p on e.id = p.empID;

-- fetch out all the employee id's and their contact detail who have been working
-- from jaipur with the clients name working on hyderabad.
select e.id, e.emailID, e.phoneNumber, c.f_name, c.l_name from emp as e
inner join client_data as c on e.id = c.emp_ID where e.city = "Jaipur" and c.city = "Hyderabad";

-- LEFT JOIN
-- fetch out each project allocated to each employee
select * from emp as e 
left join proj as p on e.id = p.empID;


-- RIGHT JOIN
-- list out all the projects along with the employee's name and their respective allocated email ID.
select e.fname, e.lname, e.emailID, p.book_name from emp as e
right join proj as p on e.id = p.empID;

-- CROSS JOIN
-- list out all the combinations possible for the employee's name and projects that can exists.
select e.fname, e.lname, p.* from emp as e
cross join proj as p;

-- can we use join with out using JOIN keyword
-- >> YES!! [It will be like a Inner join]
-- >> SYNTAX : select * from left_table, right_table where left_table.id = right_table.id
select e.id, e.fname, e.phoneNumber, p.book_name, p.clientID from emp as e, proj as p where e.id = p.empID;


