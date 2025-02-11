-- List the employee number, last name, first name, sex, and salary of each employee
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
-- Shows salaries in descending order to see who the big earners are
ORDER BY s.salary DESC; 

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT
	e.first_name,
	e.last_name,
	e.hire_date
FROM employees AS e
WHERE TO_CHAR(e.hire_date, 'YYYY') = '1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT 
	dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT
	de.dept_no,
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT 
	de.emp_no,
	e.last_name,
	e.first_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT 
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT
	last_name,
	COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;