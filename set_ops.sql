-- SET OPERATIONS
-- tables must have equal number of cols
-- here number of rows get increased rather than cols like JOIN Operations

-- SYNTAX: select * from table_one union select * from table_two;

-- SET Operation combines two or more select statment.

-- Key Differences Between JOIN and SET in SQL
-- ########################################################
-- 1. Purpose:
--    - JOIN is used to retrieve and combine data from multiple tables.
--    - SET is used to modify or assign values in a table or variable.

-- 2. Usage:
--    - JOIN is used in SELECT queries to fetch related records.
--    - SET is used in UPDATE queries to modify existing data or in variable assignments.

-- 3. Effect:
--    - JOIN does not alter data; it only retrieves data.
--    - SET changes existing data in the database.

-- Example of JOIN:
SELECT orders.id, customers.name 
FROM orders 
JOIN customers ON orders.customer_id = customers.id;

-- Example of SET:
UPDATE employees 
SET salary = salary * 1.10 
WHERE department = 'IT';

-- Example of SET with Variable:
SET @total_salary = (SELECT SUM(salary) FROM employees); 
-- ########################################################

-- INTERSECT
-- INTERSECT in SQL

-- INTERSECT returns common records from two SELECT queries (i.e., rows present in both result sets).
-- It removes duplicates by default.

-- Example (in databases that support INTERSECT, like PostgreSQL, SQL Server):
-- SELECT id, name FROM employees
-- INTERSECT
-- SELECT id, name FROM managers;

-- MySQL does not support INTERSECT directly.
-- To emulate INTERSECT in MySQL, use INNER JOIN or EXISTS.

-- Method 1: Using INNER JOIN (Most efficient)
SELECT e.id, e.name 
FROM employees e
INNER JOIN managers m ON e.id = m.id AND e.name = m.name;

-- Method 2: Using EXISTS
SELECT id, name FROM employees e
WHERE EXISTS (
    SELECT 1 FROM managers m WHERE e.id = m.id AND e.name = m.name
);

-- MINUS
-- MINUS in SQL (also known as EXCEPT in some databases)

-- MINUS returns rows from the first SELECT query that are not present in the second SELECT query.
-- Removes duplicates by default.

-- Example (in databases that support MINUS, like Oracle, PostgreSQL as EXCEPT):
-- SELECT id, name FROM employees
-- MINUS
-- SELECT id, name FROM managers;

-- MySQL does not support MINUS directly.
-- To emulate MINUS in MySQL, use LEFT JOIN or NOT EXISTS.

-- Method 1: Using LEFT JOIN with NULL check
SELECT e.id, e.name 
FROM employees e
LEFT JOIN managers m ON e.id = m.id AND e.name = m.name
WHERE m.id IS NULL;

-- Method 2: Using NOT EXISTS
SELECT id, name FROM employees e
WHERE NOT EXISTS (
    SELECT 1 FROM managers m WHERE e.id = m.id AND e.name = m.name
);
