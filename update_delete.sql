create table customer (
	id integer primary key not null,
    cname varchar(255),
    address varchar(255),
    gender char(2),
    city varchar(255),
    pincode integer
);

insert into customer (id, cname, address, gender, city, pincode) values
	(1230, 'Shayam', 'Ludhiana H.O', 'M', 'Ludhiyana', 144001),
    (1231, 'Neelabh', 'Ashoknagar', 'M', 'Jalandhar', 144022),
    (1232, 'Barkha', 'dilbar nagar', 'F', 'Jalandhar', 144022),
    (1233, 'Rohan', 'Ludhiana H.O', 'M', 'Ludhiyana', 144001);
    
select * from customer;

-- Update
update customer set address = 'Mumbai', gender = 'M' where id = 1233;

-- Update Multiple rows => dont use where => before that you have to do `SET SQL_SAFE_UPDATES = 0` to bypass the default security of MySQL

-- detele
delete from customer where id = 1233;

