-- VIEW
use joins_learning;
select * from emp;

-- creating a view
create view custome_view as select fname, age from emp;

-- viewing from view
select * from custome_view;

-- alter view
alter view custome_view as select fname, lname, age from emp;

-- drop view
drop view if exists custome_view;
