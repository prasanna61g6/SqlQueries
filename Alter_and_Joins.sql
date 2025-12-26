-- Named constraints
-- NOT NULL, PRIMARY KEY,
-- CHECK, FORIEGN KEY, UNIQUE  
DROP TABLE employee;
CREATE TABLE employee
(
    emp_id NUMBER,
    age NUMBER,
    CONSTRAINT emp_pk PRIMARY KEY(emp_id),
    CONSTRAINT age_ck CHECK(age > 20)
);
-- DROP CONSTRAINT constraint_name
-- Delete constraints
-- DDL Command -> ALTER
-- ALTER is used to alter the structure of the
-- table (Not data)
-- ALTER + ADD
-- 1. Alter + Add can be used to add more
-- columns to a table that is already created
-- 2. Alter + add can be used to add contraints
-- to a column in a created table
CREATE TABLE employee
(
    emp_id NUMBER,
    emp_name VARCHAR2(50)
);

DESC employee;

INSERT INTO employee VALUES(1, 'Alice');
INSERT INTO employee VALUES(2, 'Bob');

SELECT * FROM employee;
-- ALTER + ADD
-- ALTER TABLE tab_name ADD col datatype;
ALTER TABLE employee ADD age NUMBER;
UPDATE employee SET age = 20 WHERE emp_id = 1;
-- ALTER + TABLE tab_naem ADD col1 dt1, col2 dt2;
ALTER TABLE employee ADD (email VARCHAR2(50), doj DATE);
-- To add a constraint to an existing column
-- Add a new constraint
-- ALTER TABLE table_name ADD CONSTRAINT const_name
UPDATE employee SET age = NULL WHERE age < 0;
ALTER TABLE employee ADD CONSTRAINT age_ck CHECK(age > 0);

INSERT INTO employee VALUES(3, 'Charlie', -20, 'charlie@gmail.com', DATE '2025-12-25');
-- ALTER + RENAME
-- It's used to change the name of the columns
-- ALTER TABLE table_name RENAME column old_colname TO new_col_name
ALTER TABLE employee RENAME COLUMN doj TO date_of_joining;

-- ALTER + DROP
-- 1. Used to drop existing columns
-- in the table
ALTER TABLE employee DROP COLUMN age;
select * from EMPLOYEE;
-- 2. Used to drop existing 
-- constraints
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
ALTER TABLE employee DROP CONSTRAINT age_ck;






-- SQL - Joins
