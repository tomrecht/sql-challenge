SELECT employees.emp_no, last_name, first_name, sex, salary FROM employees
JOIN salaries ON (employees.emp_no = salaries.emp_no);

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

SELECT departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name FROM departments
JOIN dept_manager ON (departments.dept_no = dept_manager.dept_no)
JOIN employees ON (dept_manager.emp_no = employees.emp_no);

SELECT employees.emp_no, last_name, first_name, dept_name FROM employees
JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN departments ON (dept_emp.dept_no = departments.dept_no);

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, last_name, first_name, dept_name FROM employees
JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales';

SELECT employees.emp_no, last_name, first_name, dept_name FROM employees
JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, count(emp_no) FROM employees 
GROUP BY last_name 
ORDER BY count(emp_no) DESC;