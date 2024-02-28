drop table department;
--create table department
CREATE TABLE department (
    dept_no VARCHAR(30) PRIMARY KEY,
    dept_name VARCHAR(30)
);

SELECT * FROM department;

--create table dept_emp
CREATE TABLE dept_emp (
    emp_no Int PRIMARY KEY,
    dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

SELECT * FROM dept_emp;

-- create table dept_manager
CREATE TABLE dept_manager(
		dept_no VARCHAR(30),
		emp_no INT
);
SELECT * FROM dept_manager

--create table employee
CREATE TABLE employee(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex CHAR(1),
	hire_date DATE
	FOREIGN KEY (emp_title_id) REFERENCES titles(titles_id)
);
SET datestyle = MDY;
show datestyle

SELECT * FROM employee;

--create table salaries
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT
);
SELECT * FROM salaries;

drop table titles;
--create table titles
CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);
SELECT * FROM titles;


