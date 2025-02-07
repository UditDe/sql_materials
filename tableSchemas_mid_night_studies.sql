create database org;
show databases;
use org;

CREATE TABLE Worker (
    worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    salary INT(15),
    joining_date DATETIME,
    department CHAR(25)
);

insert into Worker 
	(worker_id, first_name, last_name, salary, joining_date, department) values
    (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
    (002, 'Niharika', 'Verma', 200000, '13-02-20 09.00.00', 'SDE'),
    (003, 'Pritam', 'Ghosh', 500000, '11-02-20 09.00.00', 'TEAM LEAD'),
    (004, 'Vishi', 'Roy', 300000, '09-02-20 09.00.00', 'CA'),
    (005, 'Pinaki', 'Patel', 800000, '23-02-20 09.00.00', 'CEO'),
    (006, 'Vipul', 'Chowdhri', 700000, '29-02-20 09.00.00', 'PA'),
    (007, 'Piyush', 'Sen', 300000, '29-02-20 09.00.00', 'PO'),
    (008, 'Rima', 'Sarkar', 700000, '29-05-20 09.00.00', 'HR');
    
SELECT * FROM Worker;
    
CREATE TABLE Bounus (
    worker_ref_id INT,
    bounus_amount INT(10),
    bounus_date DATETIME,
    FOREIGN KEY (worker_ref_id)
        REFERENCES Worker (worker_id)
        ON DELETE CASCADE
);

insert into Bounus
	(worker_ref_id, bounus_amount, bounus_date) values
    (001, 5000, '16-02-20'),
    (002, 3000, '16-06-11'),
    (003, 4000, '16-02-20'),
    (001, 4500, '16-02-20'),
    (002, 3500, '16-06-11');
    
CREATE TABLE Title (
    worker_ref_id INT,
    worker_title CHAR(25),
    affected_form DATETIME,
    FOREIGN KEY (worker_ref_id)
        REFERENCES Worker (worker_id)
        ON DELETE CASCADE
);

insert into Title
	(worker_ref_id, worker_title, affected_form) values
    (001, 'Manager', '2016-02-20 00:00:00'),
    (002, 'Executive', '2016-02-20 00:00:00'),
    (008, 'Executive', '2016-02-20 00:00:00'),
    (005, 'Manager', '2016-02-20 00:00:00'),
    (004, 'Asst. Manager', '2016-02-20 00:00:00'),
    (007, 'Executive', '2016-02-20 00:00:00'),
    (006, 'Lead', '2016-02-20 00:00:00'),
    (003, 'Lead', '2016-02-20 00:00:00');
    

    
