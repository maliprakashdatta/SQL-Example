CREATE TABLE employee

USE empolyee

CREATE TABLE empolyee(
  empolyee_id INT NOT NULL,
  emp_name VARCHAR(45) NULL,
  emp_address VARCHAR(45) NULL,
  emp_dept_id VARCHAR(45) NOT NULL,
  emp_manager_id VARCHAR(45) NOT NULL,
  empolyeecol VARCHAR(45) NULL,
  PRIMARY KEY (empolyee_id, emp_manager_id, emp_dept_id));

SELECT * FROM empolyee;
-----------------------------------------------------------------------------
INSERT INTO empolyee(empolyee_id, emp_name, emp_address, emp_dept_id, emp_manager_id) VALUES ('1','Prakash','Jath','1001','1111');
INSERT INTO empolyee(empolyee_id, emp_name, emp_address, emp_dept_id, emp_manager_id) VALUES ('2','Nirav','Pune','1002','1112');
INSERT INTO empolyee(empolyee_id, emp_name, emp_address, emp_dept_id, emp_manager_id) VALUES ('3','Purva','Mumbai','1003','1113');
INSERT INTO empolyee(empolyee_id, emp_name, emp_address, emp_dept_id, emp_manager_id) VALUES ('4','Ujwala','Stara','1004','1114');

select * from employee;
------------------------------------------------------------------------------
new table creation department.
CREATE TABLE department (
  department_id INT NOT NULL,
 department_name VARCHAR(45) NULL,
  PRIMARY KEY (department_id));

SELECT * FROM department;
---------------------------------------------------------------------------

INSERT INTO department (department_id,  department_name) VALUES ('1', '	Marketing');
INSERT INTO department(department_id,  department_name) VALUES ('2','Human Resources');
INSERT INTO department(department_id,  department_name) VALUES ('3','Marketing');
INSERT INTO department(department_id,  department_name) VALUES ('4','Business Development');
INSERT INTO department(department_id,  department_name) VALUES ('5','Legal');
INSERT INTO department(department_id,  department_name) VALUES ('6','Accounting');
INSERT INTO department(department_id,  department_name) VALUES ('7','Support');
INSERT INTO department(department_id,  department_name) VALUES ('8','Product Management');
INSERT INTO department(department_id,  department_name) VALUES ('9','Sales');
INSERT INTO department(department_id,  department_name) VALUES ('10','Training');

--------------------------------------------------------------------------------------

ALTER TABLE employees 
RENAME TO  employee.emp ;

ALTER TABLE department 
RENAME TO  employee.dept;
--------------------------------------------------------------------------------------
-------Image representation:-----------------------
SELECT *  
FROM dept   
INNER JOIN emp  
ON dept.department_id = emp.emp_name;
----------------
SELECT *
FROM dept 
INNER JOIN emp  
ON emp.empolyee_id = dept.department_id;
--------------------------------------------------------------------------------------
==================================
officer table and students table====>
==================================
CREATE TABLE officers (
  officer_id INT NOT NULL,
  officer_name VARCHAR(45) NULL,
  address VARCHAR(45) NULL,
  PRIMARY KEY (officer_id));
------------------------------------
INSERT INTO students(student_id, student_name, course_name) VALUES ('1', 'Prakash', 'MCA');
INSERT INTO students(student_id, student_name,course_name) VALUES ('2', 'Nirav', 'MBBS');
INSERT INTO students(student_id, student_name, course_name) VALUES ('3', 'Purva', 'MBA');
INSERT INTO students(student_id, student_name, course_name) VALUES ('4', 'Ujwala', 'MA');

------------------------------------
CREATE TABLE students(
  student_id INT NOT NULL,
  student_name VARCHAR(45) NULL,
  course_name VARCHAR(45) NULL,
  PRIMARY KEY (student_id));
---------------------------------------------------------------------------------------------
INSERT INTO officers(officer_id, officer_name, address) VALUES ('1', 'Umesh', 'Pune');
INSERT INTO officers(officer_id, officer_name, address) VALUES ('2', 'Ramesh', 'sangli');
INSERT INTO officers(officer_id, officer_name, address) VALUES ('3', 'Siddharth', 'Mumbai');
INSERT INTO officers(officer_id, officer_name, address) VALUES ('4', 'Shivanand', 'Pune');
INSERT INTO officers(officer_id, officer_name, address) VALUES ('5', 'Rajendra', 'Hydarbad');
-------------------------------------------------------------------------------------------------

---->Inner Join---------------
SELECT officers.officer_name, officers.address, students.course_name  
FROM officers   
INNER JOIN students  
ON officers.officer_id = students.student_id;
--------------------------------------------------------

---->Left Join----------------
SELECT  officers.officer_name, officers.address, students.course_name  
FROM officers  
LEFT JOIN students  
ON officers.officer_id = students.student_id; 
--------------------------------
---->Right Join----------------
SELECT officers.officer_name, officers.address, students.course_name, students.student_name  
FROM officers  
RIGHT JOIN students  
ON officers.officer_id = students.student_id;
--------------------------------
---->Full Join----------------
SELECT officer_id,officer_name,student_id,course_name
 FROM students
 FULL JOIN officers
 ON officer_id=student_id;












