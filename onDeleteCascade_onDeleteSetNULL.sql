use temp;
insert into customer values (1, 'Ram Kumar', 'Agra', 'M', 'Delhi NCR', NULL);
select * from customer;

create table order_details (
	order_id integer primary key,
    delivery_date date,
    cust_id integer,
    foreign key(cust_id) references customer(id)
);

insert into order_details values(3, '2019-03-11', 1);

select * from order_details;

-- using this command we can not delete
delete from customer where id = 1;
-- so deleting the table 
drop table order_details;

-- the following process is on deleting cascade means, if you delete some row in parent table, then the corresponding data in child will be gone.
create table order_details_two (
	order_id integer primary key,
    delivery_date date,
    cust_id integer,
    foreign key(cust_id) references customer(id) on delete cascade
);

insert into order_details_two values(3, '2019-03-11', 1);
insert into order_details_two(order_id, delivery_date, cust_id) values
	(4, '2019-03-11', 1),
    (5, '2019-03-12', 1225),
    (6, '2019-03-15', 1227),
    (7, '2019-03-24', 1227),
    (8, '2019-03-30', 1231);
    
select * from order_details_two;

delete from customer where id = 1;

-- the following table is the method of `on delete set null` => this will not delete rows from child table instade it will make The Foreign Key as NULL
create table order_details_three (
	order_id integer primary key,
    delivery_date date,
    cust_id integer,
    foreign key(cust_id) references customer(id) on delete set null
);

insert into order_details_three(order_id, delivery_date, cust_id) values
	(3, '2019-03-11', 1),
	(4, '2019-03-11', 1),
    (5, '2019-03-12', 1225),
    (6, '2019-03-15', 1227),
    (7, '2019-03-24', 1227),
    (8, '2019-03-30', 1231);
    
delete from customer where id = 1225;
select * from order_details_three;







