-- Clauses:
-- Order by
-- Order by is used to order the fectched data
-- in either asceding or desecnding order
-- based on one column or more columns
-- Syntax for using ORDER BY on single column
-- SELECT col1, col2, ... FROM table_name
-- ORDER BY col_name
-- Display the data of all the employees
-- in asceding order of their salaries
SELECT * FROM employee;

SELECT * FROM employee
ORDER BY salary; -- Order by natural order is ascending
SELECT * FROM employee
ORDER BY salary DESC;
-- When using ASC -> Nulls to to last / end
-- When using DSEC -> Nulls come first
SELECT * FROM employee
WHERE department = 'Testing'
ORDER BY salary;

-- find out who is earning highest salary
-- in HR department -> Henry Clark
SELECT * FROM employee
WHERE department = 'HR'
ORDER BY SALARY DESC;

-- Who joined the org first
SELECT * FROM employee ORDER BY date_of_joining;

-- Who among the female employees joined in the year
-- 2022 in Operations department is earning lowest amount
-- of salary
SELECT * FROM employee
WHERE
gender = 'Female'
AND department = 'Operations'
AND date_of_joining BETWEEN DATE '2022-01-01'
AND DATE '2022-12-31'
ORDER BY salary DESC;
-- Display the names of all the employee for whom
-- the email is missing in ASCENDING ORDER of their names
SELECT name FROM employee WHERE email IS NULL
ORDER BY name;
-- FECTH FIRST / LIMIT
-- Is used to limit the number of rows on display
-- to n rows (1 row or 2 rows and so on)
SELECT * FROM employee
WHERE department = 'HR'
ORDER BY salary DESC
FETCH FIRST 5 ROWS ONLY;

-- Get the data of top 3 youngest male employees
--  testing department
SELECT * FROM
employee
WHERE department = 'Testing' AND gender = 'Male'
ORDER BY age
FETCH FIRST 3 ROWS ONLY;
-- Order by on multiple columns
-- It's possible to write ORDER BY on multiple columns
SELECT * FROM employee
ORDER BY salary, name;

SELECT * FROM employee
ORDER BY age DESC, name DESC;

-- Get the data in descending
-- order of doj
-- if there are any ties
-- get it age ASC, 
-- if there are still ties
-- get it in name desc
SELECT * FROM employee
ORDER BY date_of_joining DESC,
age ASC, name DESC;

-- Aggregate functions
-- SUM(), AVG(), COUNT(), MIN(),  MAX()
-- They are used to provide one result per multiple rows
-- data
-- SUM() function is used to sum up the data across
-- multiple rows
-- Total salary being paid to employees per month
SELECT SUM(salary) AS total_sal FROM employee; 
-- AVG() function is used to find the average
SELECT AVG(salary) AS avg_sal FROM employee;
SELECT AVG(age) AS avg_age FROM employee;

-- MIN() and MAX() are used to get min_value / max_value
-- across different rows
-- Used to find highest / lowest values on different types
-- of data
-- Can be applied on string types, date types or number types
-- too
SELECT MIN(salary) FROM employee; -- Gives lowest salary
SELECT MAX(date_of_joining) FROM employee; -- Recenet join date
SELECT MAX(age) FROM employee; -- Oldest employee's age
SELECT MIN(name) FROM employee; -- Alphabetically smallest name
SELECT MAX(name) FROM employee;-- Alphabetically largest

-- COUNT(col_name) is used to count the values in a column
-- ignores nulls in columns
-- COUNT(*) to count number of rows return types
-- Just counts the number of rows
SELECT COUNT(email) FROM employee; -- ignores nulls
SELECT COUNT(age) FROM employee; -- ignores nulls
SELECT COUNT(*) FROM employee; -- counts rows (all rows)
SELECT * FROM employee WHERE age is null;

SELECT SUM(salary) FROM employee
WHERE department = 'HR';

SELECT SUM(salary) FROM employee
WHERE gender = 'Male';
-- 1. Find out how many employees joined in the year
-- 2020
SELECT COUNT(*) FROM employee WHERE date_of_joining BETWEEN
DATE '2020-01-01' AND DATE '2020-12-31';
-- 2. What is the lowest salary you are paying to 
-- any male employee from HR department
SELECT MIN(salary) FROM employee WHERE gender = 'Male'
AND department = 'HR';
-- 3. What is the average of salaries of all female
-- employees from hr department

-- 4. How many female employees have joined in the
-- Testing department in 2019
-- 5. What is average of ages of all female employees
-- in your org
SELECT ROUND(AVG(salary), 2) FROM employee;
-- ROUND() Rounds the value
SELECT ROUND(123.45678, 2); -- 123.46
SELECT ROUND(123.45478, 2); -- 123.45
-- TRUNC() Cuts the value
SELECT TRUNC(123.45678, 2); -- 123.45
SELECT TRUNC(123.45478, 2); -- 123.45


-- GROUP BY
-- HAVING
