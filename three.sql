create table ACC (
	id int primary key,
    username varchar(255) unique,
    balance int not null default 50
);

insert into ACC (id, username, balance) values
	(6, 'F', 10432);
select * from ACC;

drop table ACC;

-- ADD new Col
alter table ACC add interest float not null default 3.4;

-- MODIFY
alter table ACC modify interest double not null default 3.0459;

-- Describe Account
desc ACC;

-- Rename Col
alter table ACC change column interest saving_interest float not null default 0;

-- drop Col
alter table ACC drop column saving_interest;

-- rename the table
alter table ACC rename to ACC_DETAILS;
desc ACC_DETAILS;