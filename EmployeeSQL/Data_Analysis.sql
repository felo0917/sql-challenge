--Data Analysis

--List the following details of each employee: employee number, last name, first name, sex, and salary.
--Perform an INNER JOIN on the employees and titles tables
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
From salaries
Inner Join employees on
employees.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
where hire_date between '1986-01-01' and '1986-12-31'
;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Inner Join departments on
departments.dept_no=dept_manager.dept_no
Inner Join employees on
employees.emp_no=dept_manager.emp_no;

