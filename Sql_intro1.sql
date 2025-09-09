CREATE TABLE student (
    s_id INT,
    name VARCHAR(50),
    branch VARCHAR(5),
    age INT
);

-- to see the description (coloumns and their type)
-- DESC table_name
DESC student;

-- Select command is used to fetch the data from table
-- SELECT * FROM table_name
SELECT * FROM Student;

-- Insert the data into student table
-- DML -> INSERT
-- Syntax: INSERT INTO table_name VALUES(val1, val2, ...)
-- Inserting data of alice into student table
INSERT INTO student VALUES(1, 'Alice', 'CSE', 17);
INSERT INTO student VALUES(2, 'Bob', 'AIML', 18);
INSERT INTO student VALUES(3, 'Charlie', 'IT', 18);
INSERT INTO student VALUES(4, 'Marie', 'ECE', 17);
INSERT INTO student VALUES(5, 'Enid', 'DS', 18);

SELECT * FROM student;
SELECT name, age FROM student;

-- to delete the data from table
-- DELETE FROM table_name

DELETE FROM student;
