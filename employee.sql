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





