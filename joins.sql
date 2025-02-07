-- Syntax of Inner join : 
-- select c.*, o.* from customer as c inner join orders as o on c.id = o.cust_id;

-- Syntax of Left Outer Join:
-- select c.*, o.* from customer as c left join orders as o on c.id = o.cust_id;

-- Syntax of right Outer Join:
-- same as left join

-- Syntax of Full join: there is no keyword for full join so we do emulation = left join U right join
-- select * from left_table as l left join right_table as r on l.key = r.key;
-- <= Union => select * from left_table as l right join right_table as r on l.key = r.key;

-- Cross Join: Cartesian Prod => table_one X table_two => 5 rows X 10 rows = 50 rows table

-- self join: using inner join as alias (as key word) 
-- e.g. =>
-- select e1.id, e2.id, e2.name 
-- from employee as e1 
-- innerjoin employee as e2
-- on e1.id = e2.id	


