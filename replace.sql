-- Replace
-- if(data present) { replaces the data }
-- else if(not present) { insert the new data }

use temp;
select * from customer;
-- adds new data (insert)
replace into customer(id, cname, city) values (1211, 'Vikhas', 'Kolkata');
-- replaces data
replace into customer(id, cname, city) values (1, 'Ram', 'Delhi');
-- another syntax
replace into customer set id = 1300, cname = 'MAC', city = 'Utah';
-- anotehr syntax
replace into  customer(cname, city)
	select cname, city
    from customer where id = 1300
    
-- Replace vs Update => while data is not present, replace will do a job like insert and update will do nothing

    