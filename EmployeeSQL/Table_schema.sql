-- Drop table if exists
Drop table employees;
Drop table titles;
Drop table salaries;
Drop table departments;
Drop table dept_manager;
Drop table dept_emp;

--Create table for employees
CREATE TABLE employees (
	emp_no integer NOT NULL,
	emp_title_id varchar(255) NOT NULL,
	birth_date date,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	sex varchar,
	hire_date date,
	Primary Key (emp_no)
);

select *
from employees;


--Create table for titles
CREATE TABLE titles (
	title_id varchar(255),
	title varchar(255) NOT NULL
);

select *
from titles;


--Create table for salaries
CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salaries integer NOT NULL	
);

select *
from salaries;

--Create table for departments
CREATE TABLE departments (
	dept_no varchar(255) NOT NULL,
	dept_name varchar(255) NOT NULL,
	Primary Key (dept_no)
);

select *
from departments;


--Create table for dept_manager
CREATE TABLE dept_manager (
	dept_no varchar(255) NOT NULL,
	emp_no integer NOT NULL,
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no)
);

select *
from dept_manager;


--Create table for dept_emp
CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no varchar(255) NOT NULL,
	Foreign Key (emp_no) References employees(emp_no),
	Foreign Key (dept_no) References departments(dept_no)
);

select *
from dept_emp;