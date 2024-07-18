
CREATE DATABASE IF NOT EXISTS stepupdb;

USE stepupdb;
CREATE TABLE customer (
	customer_id INTEGER,
	name VARCHAR(50),
	city VARCHAR(28)
);
CREATE TABLE department (
dept_id INTEGER,
name VARCHAR(50),
building_name VARCHAR(70)
);
----------------------------------------------------------------------------
CREATE TABLE department (
	dept_id INTEGER PRIMARY KEY,
	name VARCHAR(50),
	building_name VARCHAR(70)
);


SELECT * FROM department;

ALTER TABLE department
ADD COLUMN location VARCHAR(75);

ALTER TABLE department
DROP COLUMN location;

DROP TABLE department;

INSERT INTO department(dept_id, name, building_name, location) VALUES (1, 'Sales', 'Sales Commodity Complex', 'Mumbai');

INSERT INTO department(name, dept_id, location, building_name)
VALUES ('Purchase', 2, 'Delhi', 'Purchases Commodity Complex');

DELETE FROM department;

SELECT * FROM department WHERE dept_id > 950;

SELECT * FROM department;
DELETE FROM department WHERE dept_id > 950;
SELECT * FROM department;

TRUNCATE TABLE department;

SELECT * FROM department;

UPDATE department
SET location = 'Kolkata'
WHERE dept_id = 4 AND name = 'Research and Development';

SELECT * FROM department WHERE dept_id = 4 AND name = 'Research and Development';

SELECT count(*) FROM department;

SELECT name, count(*) as total_dept_count
FROM department
GROUP BY name
HAVING total_dept_count > 80;

SELECT DISTINCT(name) FROM department;

INSERT INTO department(dept_id, name, building_name, location) VALUES
(1001,'Support 123','Northport','Kalpower');

----------------------------------------------------------------------------
CREATE TABLE marks(
	id INTEGER,
    name VARCHAR(120),
    marathi INTEGER,
    english INTEGER,
	maths INTEGER
);

SELECT * FROM marks;

SELECT max(marathi) FROM marks;
SELECT min(marathi) FROM marks;

SELECT * FROM marks ORDER BY marathi DESC LIMIT 3;
SELECT * FROM marks ORDER BY marathi ASC LIMIT 1;

SELECT AVG(marathi), AVG(english),AVG(maths) FROM marks;

SELECT * FROM marks ORDER BY marathi DESC LIMIT 3;

SELECT *, dense_rank() OVER(ORDER BY marathi DESC) FROM marks;

SELECT * FROM marks LIMIT 25 OFFSET 35;
==============================================================================
DROP table employee;

CREATE TABLE employee (
	emp_id INTEGER PRIMARY KEY,
    name VARCHAR(128),
    city VARCHAR(56),
    dept_id INTEGER,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);

INSERT INTO employee(emp_id, name, city, dept_id)
VALUES (1, 'Aman', 'Pune', 1);

INSERT INTO employee(emp_id, name, city, dept_id)
VALUES (2, 'Deepak', 'Mumbai', 5);

SELECT * FROM Department;
SELECT * FROM employee;

SELECT e.emp_id,e.name,e.city,d.name as 'dept' FROM department d
JOIN employee e
ON d.dept_id = e.dept_id
===================************************************************==============================

officer_id

CREATE TABLE `employee`.`officers` (
  `officer_id` INT NOT NULL,
  `officer_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`officer_id`));
------------------------------------
INSERT INTO `employee`.`students` (`student_id`, `student_name`, `course_name`) VALUES ('1', 'Prakash', 'MCA');
INSERT INTO `employee`.`students` (`student_id`, `student_name`, `course_name`) VALUES ('2', 'Nirav', 'MBBS');
INSERT INTO `employee`.`students` (`student_id`, `student_name`, `course_name`) VALUES ('3', 'Purva', 'MBA');
INSERT INTO `employee`.`students` (`student_id`, `student_name`, `course_name`) VALUES ('4', 'Ujwala', 'MA');

------------------------------------
CREATE TABLE `employee`.`students` (
  `student_id` INT NOT NULL,
  `student_name` VARCHAR(45) NULL,
  `course_name` VARCHAR(45) NULL,
  PRIMARY KEY (`student_id`));
------------------------------------------------------------
INSERT INTO `employee`.`officers` (`officer_id`, `officer_name`, `address`) VALUES ('1', 'Umesh', 'Pune');
INSERT INTO `employee`.`officers` (`officer_id`, `officer_name`, `address`) VALUES ('2', 'Ramesh', 'sangli');
INSERT INTO `employee`.`officers` (`officer_id`, `officer_name`, `address`) VALUES ('3', 'Siddharth', 'Mumbai');
INSERT INTO `employee`.`officers` (`officer_id`, `officer_name`, `address`) VALUES ('4', 'Shivanand', 'Pune');
INSERT INTO `employee`.`officers` (`officer_id`, `officer_name`, `address`) VALUES ('5', 'Rajendra', 'Hydarbad');
---------------------------------------------

SELECT officers.officer_name, officers.address, students.course_name  
FROM officers   
INNER JOIN students  
ON officers.officer_id = students.student_id;


