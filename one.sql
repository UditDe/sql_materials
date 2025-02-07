create database temp;

use temp;

create  table student (
	id int primary key,
	name varchar(25)
);

insert into student values(1, 'Ankit');

select * from student;