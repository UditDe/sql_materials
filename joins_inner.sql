-- creating db
create database joins_learning;

use joins_learning;

create table emp(
	id int primary key not null auto_increment,
    fname varchar(255),
    lname varchar(255),
    age int,
    emailID varchar(255),
    phoneNumber bigint,
    city varchar(255)
);

insert into emp(fname, lname, age, emailID, phoneNumber, city) values
	("Yagya", "Narayan", 44, "yagya@gmail.com", 9856185021, "Palam"),
    ("Rahul", "BD", 22, "rahul@gmail.com", 9856155089, "Kolkata"),
    ("Jatin", "Hermit", 31, "Jatin@gmail.com", 7846091233, "Raipur"),
    ("Pk", "Pandey", 21, "pk@gmail.com", 6781004589, "Jaipur");
    
create table proj(
	id int primary key not null auto_increment,
    book_name varchar(255),
    start_date date,
    empID int,
	foreign key(empID) references emp(id),
    clientID int,
    foreign key (clientID) references client_data(id)
);

create table client_data(
	id int primary key not null auto_increment,
    f_name varchar(255),
    l_name varchar(255),
    age int,
    emailID varchar(255),
    phone_no bigint,
    city varchar(255),
    emp_ID int,
    foreign key(emp_ID) references emp(id)
);

insert into client_data(f_name, l_name, age, emailID, phone_no, city, emp_ID) values
	("Mac", "Rogers", 47, "mac@gmail.com", 8923591109, "Kolkata", 3),
    ("Max", "Poirier", 27, "max@gmail.com", 6993541209, "Kolkata", 3),
	("Peter", "Jain", 24, "peter@gmail.com", 9933572101, "Delhi", 1),
    ("Sushant", "Aggarwal", 23, "sushant@gmail.com", 8923529580, "Hyderabad", 5),
    ("Pratap", "Singh", 47, "mac@gmail.com", 7943191109, "Mumbai", 2);
    
insert into proj(empID, book_name, start_date, clientID) values
	(1, "A", "2021-04-21",3),
    (2, "B", "2021-03-12",1),
    (3, "C", "2021-01-16",5),
    (3, "D", "2021-04-27",2),
    (5, "E", "2021-05-01",4);
    
    
select * from emp;
select * from client_data;
select * from proj;


