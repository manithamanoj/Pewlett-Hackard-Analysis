--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS titles;
--DROP TABLE IF EXISTS  dept_emp; 


-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);
--Creating tables for employees
CREATE TABLE employees(
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);
--Creating tables for Managers
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
--Creating tables for Salaries
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);
--Creating tables for titles
CREATE TABLE titles (
  emp_no INT NOT NULL,
  title INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);
--Creating tables for department employees
CREATE TABLE dept_emp (
   emp_no INT NOT NULL,
   dept_no VARCHAR(4) NOT NULL,
   from_date DATE NOT NULL,
   to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM departments;

