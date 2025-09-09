-- DROP TABLE table_name
-- the table will be removed from navigator
CREATE TABLE employee (
    emp_Id INT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(20),
    salary INT,
    email VARCHAR(100)
);

INSERT INTO employee VALUES
(1, 'John Doe', 29, 'Male', 'HR', 55000, 'john.doe@eample.com'),
(2, 'Jane Smith', 34, 'Female', 'SW', 62000, 'jane.smith@example.com'),
(3, 'Emily Brown', 30, 'Female', 'Testing', 67000, 'emily.brown@example.com'),
(4, 'Sarah Lee', 27, 'Female', 'SW', 54000, 'sarah.lee@example.com'),
(5, 'Olivia Wilson', 25, 'Female', 'Testing', 66000, 'olivia.wilson@example.com'),
(6, 'Sophia Tylor', 26, 'Female', 'SW', 54000, 'sophia.tylor@example.com'),
(7, 'William Anderson', 33, 'Male', 'Operations', 59000, 'william.anderson@example.com'),
(8, 'Lucas Thomas', 29, 'Male', 'Testing', 63000, 'lucas.thomas@example.com'),
(9, 'Amelia Garcia', 31, 'Female', 'HR', 50000, 'amelia.garcia@example.com'),
(10, 'Isabella Martiez', 32, 'Female', 'Testing', 64000, 'isabella.martiez@example.com');

SELECT * FROM employee;

-- Different 
-- SELECT + WHERE cluase
-- WHERE clause is used to filter the rows
-- based on conditions
SELECT * FROM employee 
WHERE gender = 'Male';

SELECT * FROM employee 
WHERE department = 'HR';

SELECT * FROM employee 
WHERE age > 32;

SELECT * FROM employee 
WHERE gender = 'Female'
AND department = 'HR';

SELECT name, gender, salary FROM employee 
WHERE gender = 'Male'
AND salary > 50000;

SELECT * FROM employee 
WHERE gender = 'Female'
AND department = 'Testing'
AND salary > 60000
AND age > 30;

-- DML command -> UPDATE
-- it is used to modify the data from one or more rows
SELECT * FROM employee;

UPDATE employee SET age = 39 WHERE emp_ID = 1;

UPDATE employee SET salary = 65000 WHERE emp_ID = 2;
SELECT * FROM employee WHERE emp_ID = 2;

UPDATE employee SET department = 'SWE' WHERE department = 'SW';

UPDATE employee SET salary = salary * 1.10;

UPDATE employee SET age = age + 1 WHERE department = 'HR';

-- DELETE FROM table_name is bad way,it delets everything from table
-- DELETE + WHERE 
DELETE FROM employee WHERE emp_ID = 1;
SELECT * FROM employee;

DELETE FROM employee WHERE department = 'SWE';

DELETE FROM employee WHERE gender = 'Male';
