CREATE TABLE employee

USE empolyee

CREATE TABLE empolyee` (
  empolyee_id INT NOT NULL,
  emp_name VARCHAR(45) NULL,
  emp_address VARCHAR(45) NULL,
  emp_dept_id VARCHAR(45) NOT NULL,
  emp_manager_id VARCHAR(45) NOT NULL,
  empolyeecol VARCHAR(45) NULL,
  PRIMARY KEY (empolyee_id, emp_manager_id, emp_dept_id));

SELECT * FROM empolyee;
-----------------------------------------------------------------------------
