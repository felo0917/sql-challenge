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
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Inner Join departments on
departments.dept_no=dept_manager.dept_no
Inner Join employees on
employees.emp_no=dept_manager.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Inner Join departments on
departments.dept_no=dept_emp.dept_no
Inner Join employees on
employees.emp_no=dept_emp.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex
From employees
where first_name = 'Hercules'
and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Inner Join departments on
departments.dept_no=dept_emp.dept_no
Inner Join employees on
employees.emp_no=dept_emp.emp_no
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Inner Join departments on
departments.dept_no=dept_emp.dept_no
Inner Join employees on
employees.emp_no=dept_emp.emp_no
where dept_name = 'Sales' 
or dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, count(last_name) as last_name_count
From employees
Group by last_name
Order by last_name_count desc;
